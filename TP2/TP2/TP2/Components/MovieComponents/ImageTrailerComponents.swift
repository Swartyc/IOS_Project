//
//  VideoTrailerComponents.swift
//  TP2
//
//  Created by Emmanuel Faure on 05/06/2023.
//

import Foundation
import SwiftUI

struct ImageTrailerMovieComponents : View{
    let affiche: String
    var body: some View{
        AsyncImage(
            url: URL(string: imageUrl + affiche),
            content: {image in image.image?.resizable().aspectRatio(contentMode: .fit).frame(maxWidth: .infinity)}
        )
    }
}
