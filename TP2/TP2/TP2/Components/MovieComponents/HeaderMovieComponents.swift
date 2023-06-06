//
//  HeaderMovieComponents.swift
//  TP2
//
//  Created by Emmanuel Faure on 05/06/2023.
//

import Foundation
import SwiftUI

struct HeaderMovieComponentsView: View{
    let title: String
    let subtitle: String
    var body: some View{
        Text(title)
            .multilineTextAlignment(.center)
            .font(
                .system(size:22, weight: .bold)
            )
            .foregroundColor(Color("Primary"))
        Text(subtitle)
            .font(
                .system(size:16, weight: .medium)
            )
            .foregroundColor(Color("Primary"))
    }
}
