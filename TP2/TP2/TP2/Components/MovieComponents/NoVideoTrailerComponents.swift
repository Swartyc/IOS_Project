//
//  NoVideoTrailerComponents.swift
//  TP2
//
//  Created by Emmanuel Faure on 05/06/2023.
//

import Foundation
import SwiftUI

struct NoVideoTrailerMovieComponents : View{
    var body: some View{
        VStack(alignment: .leading, spacing: 10){
            Text("movie.no_video")
                .multilineTextAlignment(.center)
                .font(
                    .system(size:22, weight: .bold)
                )
                .foregroundColor(Color("Primary"))
        }
    }
}
