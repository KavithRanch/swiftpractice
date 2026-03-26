//
//  WarGameView.swift
//  swiftpractice
//
//  Created by Kavith Ranchagoda on 2026-03-25.
//

import SwiftUI

struct WarGameView: View {
    var body: some View {
        //Zstack to stack game components on top of background
        ZStack{
            Image("background-cloth")
            
            // Vertical Stack for all components
            VStack{
                // Logo
                Spacer()
                Image("logo")
                Spacer()
                // Horizontal Stack for both cards
                HStack{
                    Spacer()
                    Image("card2")
                    Spacer()
                    Image("card9")
                    Spacer()
                }
                Spacer()
                // Deal Button
                Image("button")
                Spacer()
                // Horizontal Stack for player and cpu titles/points count
                HStack{
                    // Two Vertical Stacks for Player and CPU respectively
                    Spacer()
                    VStack{
                        Text("Player").font(Font.headline)
                            .padding(.bottom)
                        Text("0").font(Font.largeTitle)
                    }
                    Spacer()
                    VStack{
                        Text("CPU").font(Font.headline)
                            .padding(.bottom)
                        Text("0").font(Font.largeTitle)
                    }
                    Spacer()
                }
                .foregroundStyle(Color(.white))
                Spacer()
            }
        }
    }
}

#Preview {
    WarGameView()
}
