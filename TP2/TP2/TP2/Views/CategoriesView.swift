//
//  CategoriesView.swift
//  TP2
//
//  Created by Emmanuel Faure on 22/05/2023.
//

import Foundation
import SwiftUI

struct CategoriesView: View{
    var colors = ["Red", "Green", "Blue", "Tartan"]
    @State private var selectedColor = "Red"
    @State var movieList: [Movie] = []
    @State var categoriesid: Int
    @State var categoriesname: String
    @State var genreList: [Genre] = []
    init(categoriesid: Int, categoriesname: String) {
        self.categoriesid = categoriesid
        self.categoriesname = categoriesname
    }
    var body: some View{
        ScrollView{
            LazyVStack(){
                TitleCategoriesComponents(categoriesname: categoriesname)
                GenreListComponents(genreList: genreList)
                GridCategoriesComponents(movieList: movieList)
            }
        }.task {
            do{
                self.movieList = try await getAllMoviesCategories(categoriesid: categoriesid)
                self.genreList = try await getAllGenre();
            }catch let error {
                print(error)
            }
        }
    }
}

struct CategoriesView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            CategoriesView(categoriesid: 16, categoriesname: "Animation")
        }
    }
}
