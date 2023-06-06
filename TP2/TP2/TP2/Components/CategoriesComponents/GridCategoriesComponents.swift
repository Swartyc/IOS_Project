//
//  GridCategoriesComponents.swift
//  TP2
//
//  Created by Emmanuel Faure on 05/06/2023.
//

import Foundation
import SwiftUI

struct GridCategoriesComponents: View{
    let movieList: [Movie]
    var body: some View{
        let gridItems = [
                GridItem(),
                GridItem()
            ]
        LazyVGrid(columns: gridItems, spacing: 20) {
            ForEach(movieList, id: \.self) { movie in
                MovieCard(movie: movie)
            }
        }.padding(.horizontal, 20)
    }
}
