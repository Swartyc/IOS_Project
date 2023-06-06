//
//  MovieFetch.swift
//  TP2
//
//  Created by Emmanuel Faure on 04/06/2023.
//

import Foundation

func getMovie(id:Int) async throws -> Movie{
    let url = URL(string: "https://api.themoviedb.org/3/movie/\(id)?api_key=\(apikey)&language=\(language)")
    let (data, _) = try await URLSession.shared.data(from: url!)
    
    let dataTrailer = try await getTrailer(id: id)
    let movieDto = try JSONDecoder().decode(MovieDTO.self, from: data)
    let videoDto = try JSONDecoder().decode(VideoDTO.self, from: dataTrailer)
    
    var videoid = ""
    if(videoDto.results.isEmpty){
        videoid = ""
    }else{
        let trailer: TrailerDTO = videoDto.results.first(where: { $0?.type == "Trailer" && $0?.site == "YouTube"})!!
        videoid = trailer.key!
    }
    
    return Movie(id: movieDto.id!,
                       categories: movieDto.genres!,
                       title: movieDto.title!,
                       synopsis: movieDto.overview!,
                       time: movieDto.runtime!,
                       year: String(movieDto.release_date!.prefix(4)),
                       budget: movieDto.budget!,
                       avis: movieDto.vote_average!*10,
                       affiche: movieDto.backdrop_path!,
                       poster: movieDto.poster_path!,
                       videoId: videoid
    )
}

func getTrailer(id:Int) async throws -> Data{
    let url = URL(string: "https://api.themoviedb.org/3/movie/\(id)/videos?api_key=\(apikey)&language=\(language)")
    
    let (data, _) = try await URLSession.shared.data(from: url!)
    return data
}
