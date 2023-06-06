//
//  SynopsisMovieComponents.swift
//  TP2
//
//  Created by Emmanuel Faure on 05/06/2023.
//

import Foundation
import SwiftUI

struct SynopsisMovieComponents : View{
    let movie: Movie
    var body: some View{
        VStack(alignment: .leading,spacing: 10){
            Text(movie.synopsis)
                .foregroundColor(
                    Color("Primary")
                )
        }
        .padding(.horizontal, 15)
    }
}
