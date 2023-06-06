//
//  TitleCategoriesComponents.swift
//  TP2
//
//  Created by Emmanuel Faure on 05/06/2023.
//

import Foundation
import SwiftUI

struct TitleCategoriesComponents: View{
    let categoriesname: String
    var body: some View{
        Text("categories.title")
            .fontWeight(.bold)
            .font(.title)
            .foregroundColor(Color("Primary"))
            .multilineTextAlignment(.center)
        Text(categoriesname)
            .fontWeight(.bold)
            .font(.title)
            .padding(.bottom, 20.0)
            .foregroundColor(Color("Primary"))
            .multilineTextAlignment(.center)
    }
}
