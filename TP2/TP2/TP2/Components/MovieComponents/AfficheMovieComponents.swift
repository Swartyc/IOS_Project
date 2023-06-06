//
//  ImageComponents.swift
//  TP2
//
//  Created by Emmanuel Faure on 05/06/2023.
//

import Foundation
import SwiftUI

struct AfficheMovieComponents: View{
    let image: String
    var body: some View{
        AsyncImage(
            url: URL(string: imageUrl + image),
            content: {image in image.image?.resizable().aspectRatio(contentMode: .fit).frame(maxWidth: (UIScreen.main.bounds.width)/4)}
        )
    }
}
