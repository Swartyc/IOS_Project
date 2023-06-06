//
//  BasicInformationsMovieComponents.swift
//  TP2
//
//  Created by Emmanuel Faure on 05/06/2023.
//

import Foundation
import SwiftUI

struct BasicInformationsMovieComponents: View{
    let durationstring: String
    let year: String
    let budget: Int
    let satisfaction: Float
    let gradient: Gradient
    var body: some View{
        VStack(alignment: .leading, spacing: 4){
            Text("movie.time")
                .foregroundColor(
                    Color("Secondary")
                )
            +
            Text(durationstring)
                .foregroundColor(
                    Color("Primary")
                )
            Text("movie.release")
                .foregroundColor(
                    Color("Secondary")
                )
            +
            Text(year)
                .foregroundColor(
                    Color("Primary")
                )
            Text("movie.budget")
                .foregroundColor(
                    Color("Secondary")
                )
            +
            Text(String(budget) + " $")
                .foregroundColor(
                    Color("Primary")
                )
            HStack{
                Text("movie.satisfaction")
                    .foregroundColor(
                        Color("Secondary")
                    )
                
                ZStack{
                    Gauge(value: satisfaction, in: 0...100) {
                    }currentValueLabel: {
                        Text("\(Int(satisfaction))%")
                            .foregroundColor(Color.white)
                    }
                    .gaugeStyle(.accessoryCircular).tint(gradient)
                }
            }
            
        }
        .frame(maxWidth: .infinity)
    }
}
