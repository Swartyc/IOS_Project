//
//  DiscoverFetch.swift
//  TP2
//
//  Created by Emmanuel Faure on 04/06/2023.
//

import Foundation

func getAllMovies() async throws -> [Movie]{
    var movieList: [Movie] = []
    let url = URL(string: "https://api.themoviedb.org/3/discover/movie?api_key=\(apikey)&language=\(language)")
    
    let (data, _) = try await URLSession.shared.data(from: url!)
    
    let movieListDto = try JSONDecoder().decode(MovieListDTO.self, from: data)
    movieListDto.results?.forEach{ movieDto in
        movieList.append(Movie(id: movieDto.id!, poster: movieDto.poster_path!)
        )
    }
    
    return movieList
}
