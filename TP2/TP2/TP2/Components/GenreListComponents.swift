//
//  GenreListComponents.swift
//  TP2
//
//  Created by Emmanuel Faure on 06/06/2023.
//

import Foundation
import SwiftUI

struct GenreListComponents: View{
    let genreList: [Genre]
    var body: some View{
        ScrollView(.horizontal, showsIndicators: false){
            HStack(){
                ForEach(genreList, id: \.self) {
                    let namegenre = $0.name
                    let nameid = $0.id
                    NavigationLink{
                        CategoriesView(categoriesid: nameid, categoriesname: namegenre)
                    }label:{
                        Text(namegenre)
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
