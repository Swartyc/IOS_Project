//
//  MovieListDTO.swift
//  TP2
//
//  Created by Emmanuel Faure on 18/04/2023.
//

import Foundation

struct MovieListDTO: Decodable{
    //var page: Int?
    var results: [MovieDTO]?
}
