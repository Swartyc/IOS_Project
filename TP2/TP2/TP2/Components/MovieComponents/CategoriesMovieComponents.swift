//
//  CategoriesMovieComponents.swift
//  TP2
//
//  Created by Emmanuel Faure on 05/06/2023.
//

import Foundation
import SwiftUI

struct CategoriesMovieComponents: View{
    let movie: Movie
    var body: some View{
        let genrearray: [String] = movie.categories.map{ cat in
            return "\(cat.name!)"
        }
        let genreidarray: [Int] = movie.categories.map{ cat in
            return cat.id!
        }
        let numberofcategories = genrearray.count
        ScrollView(.horizontal, showsIndicators: false){
            HStack(){
                ForEach (0..<numberofcategories) {i in
                    NavigationLink{
                        CategoriesView(categoriesid: genreidarray[i], categoriesname: genrearray[i])
                    }label:{
                        Text("\(genrearray[i])")
                            .padding()
                            .background(Color("Accent"))
                            .foregroundColor(
                                Color.white
                            ).cornerRadius(.infinity)
                    }.foregroundColor(Color.white)
                }
                
            }
        }.padding(.horizontal, 15).padding(.vertical, 2)
    }
}
