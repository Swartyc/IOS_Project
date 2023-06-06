//
//  Movie.swift
//  TP2
//
//  Created by Emmanuel Faure on 04/04/2023.
//

import Foundation
struct Movie: Hashable{
    var id: Int = 0
    var categories: [GenreDTO] = []
    var title: String = ""
    var subtitle: String = ""
    let release_date: String?
    var synopsis: String = ""
    var time: Int = 0
    var year: String = ""
    var budget: Int = 0
    var avis: Float = 0
    var affiche: String = ""
    var poster: String = ""
    var videoId: String = ""
    
    init(id: Int = 0, categories: [GenreDTO] = [], title: String = "", subtitle: String = "", release_date: String = "", synopsis: String = "", time: Int = 0, year: String = "", budget: Int = 0, avis: Float = 0, affiche: String = "", poster: String = "", videoId: String = "") {
        self.id = id
        self.categories = categories
        self.title = title
        self.subtitle = subtitle
        self.release_date = release_date
        self.synopsis = synopsis
        self.time = time
        self.year = year
        self.budget = budget
        self.avis = avis
        self.affiche = affiche
        self.poster = poster
        self.videoId = videoId
    }
}
