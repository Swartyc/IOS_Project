//
//  ContentView.swift
//  TP2
//
//  Created by Emmanuel Faure on 04/04/2023.
//

import SwiftUI
import WebKit
import YouTubePlayerKit
import WrappingHStack

struct MovieView: View {
    @State private var showBA = false
    var movieid:Int
    @State var movie:Movie?
    init(movieid: Int) {
        self.movieid = movieid
    }
    
    var body: some View {
        ScrollView{
            if let movie = movie{
                let durationstring: String = String(movie.time/60) + "h" + String(movie.time%60) + "min"
                HeaderMovieComponentsView(title: movie.title, subtitle: movie.subtitle)
                VStack(spacing: 10){
                    HStack(alignment: .center, spacing: 4){
                        AfficheMovieComponents(image: movie.poster)
                        BasicInformationsMovieComponents(durationstring: durationstring, year: movie.year, budget: movie.budget, satisfaction: movie.avis, gradient: Gradient(colors: [.red, .orange, .green]))
                    }
                    ZStack{
                        if movie.videoId != ""{
                            ImageTrailerMovieComponents(affiche: movie.affiche)
                            Button {
                                showBA.toggle()
                            }label: {
                                Image(systemName: "play")
                            }.foregroundColor(Color.white)
                                .buttonStyle(.borderedProminent)
                                .sheet(isPresented: $showBA) {
                                    VideoTrailerComponents(movie: movie)
                                }.cornerRadius(.infinity).controlSize(.large)
                        }else{
                            NoVideoTrailerMovieComponents()
                        }
                    }

                }
                .padding(.horizontal, 15)
                CategoriesMovieComponents(movie: movie)
                SynopsisMovieComponents(movie: movie)
            }else{
                ProgressView()
            }
        }.foregroundColor(Color.white).task {
            do{
                self.movie = try await getMovie(id: movieid)
            }catch let error {
                print(error.localizedDescription)
            }
        }
    }
}

struct MovieView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            MovieView(movieid: 635302)
        }
    }
}
