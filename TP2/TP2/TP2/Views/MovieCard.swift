//
//  MovieCard.swift
//  TP2
//
//  Created by Emmanuel Faure on 18/04/2023.
//

import SwiftUI


struct MovieCard: View{
     var movie:Movie?
     init(movie: Movie) {
         self.movie = movie
     }
    var body: some View{
        NavigationLink{
            if let movie = movie{
                MovieView(movieid: movie.id)
            }
        }label:{
            if let movie = movie{
                AsyncImage(
                    url: URL(string: imageUrl + movie.poster),
                    content: {image in image.image?.resizable().aspectRatio(contentMode: .fit).frame(maxWidth: .infinity)}
                )
            }else{
                ProgressView()
            }
        }.foregroundColor(Color.white)
    }
}

struct MovieCard_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            MovieCard(movie: Movie())
        }
    }
}
