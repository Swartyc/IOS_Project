//
//  Genre.swift
//  TP2
//
//  Created by Emmanuel Faure on 05/06/2023.
//

import Foundation
struct Genre: Hashable, Decodable{
    var id: Int = 0
    var name: String = ""
    
    init(id: Int = 0, name: String = "") {
        self.id = id
        self.name = name
    }
}
