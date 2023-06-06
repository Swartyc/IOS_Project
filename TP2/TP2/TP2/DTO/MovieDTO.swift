//
//  MovieDTO.swift
//  TP2
//
//  Created by Emmanuel Faure on 17/04/2023.
//

import Foundation

struct MovieDTO: Decodable, Hashable{
    var id: Int?
    var title: String?
    var subtite: String?
    var overview: String?
    var genres: [GenreDTO]?
    var backdrop_path: String?
    var poster_path: String?
    var budget: Int?
    var runtime: Int?
    var vote_average: Float?
    var release_date: String?
}
