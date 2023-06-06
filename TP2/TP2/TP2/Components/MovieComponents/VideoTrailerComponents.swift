//
//  VideoTrailerComponents.swift
//  TP2
//
//  Created by Emmanuel Faure on 05/06/2023.
//

import Foundation
import SwiftUI
import YouTubePlayerKit


struct VideoTrailerComponents: View{
    let movie: Movie
    var body: some View{
        let youTubePlayer = YouTubePlayer(
            source: .video(id: movie.videoId),
            configuration: .init(
                autoPlay: true
            )
        )
        YouTubePlayerView(youTubePlayer) {state in
            switch state {
            case .idle:
                ProgressView()
            case .ready:
                EmptyView()
            case .error:
                Text("")
            }
        }
    }
}
