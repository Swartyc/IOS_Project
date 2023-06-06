//
//  DiscoverView.swift
//  TP2
//
//  Created by Emmanuel Faure on 18/04/2023.
//

import SwiftUI
struct DiscoverView: View{
    @State var movieList: [Movie] = []
    @State var genreList: [Genre] = []

    @State private var selectedgenrelist: String?
    var body: some View{
        ScrollView{
            LazyVStack{
                TitleDiscoverComponents()
                GenreListComponents(genreList: genreList)
                GridDiscoverComponents(movieList: movieList)
            }
        }.task {
            do{
                self.movieList = try await getAllMovies()
                self.genreList = try await getAllGenre();
            }catch let error {
                print(error)
            }
        }
    }
}

struct DiscoverView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            DiscoverView()
        }
    }
}
