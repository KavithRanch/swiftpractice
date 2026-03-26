//
//  WarGameView.swift
//  swiftpractice
//
//  Created by Kavith Ranchagoda on 2026-03-25.
//

import SwiftUI

struct WarGameView: View {
    @State private var playerScore = 0
    @State private var cpuScore = 0
    @State private var playerCard = "back"
    @State private var cpuCard = "back"
    
    var body: some View {
        //Zstack to stack game components on top of background
        ZStack{
            Image("background-cloth").ignoresSafeArea()
            
            // Vertical Stack for all components
            VStack{
                // Logo
                Spacer()
                Image("logo")
                Spacer()
                // Horizontal Stack for both cards
                HStack{
                    Spacer()
                    Image(playerCard)
                    Spacer()
                    Image(cpuCard)
                    Spacer()
                }
                
                Spacer()
                // Deal Button
                Button{
                    dealCards()
                } label:{
                    Image("button")
                }
                
                Spacer()
                // Horizontal Stack for player and cpu titles/points count
                HStack{
                    // Two Vertical Stacks for Player and CPU respectively
                    Spacer()
                    VStack{
                        Text("Player").font(Font.headline)
                            .padding(.bottom)
                        Text(String(playerScore)).font(Font.largeTitle)
                    }
                    Spacer()
                    VStack{
                        Text("CPU").font(Font.headline)
                            .padding(.bottom)
                        Text(String(cpuScore)).font(Font.largeTitle)
                    }
                    Spacer()
                }
                .foregroundStyle(Color(.white))
                Spacer()
            }
        }
    }
    
    func dealCards(){
        let playerNum = Int.random(in: 2...14)
        let cpuNum = Int.random(in: 2...14)
        playerCard = "card" + String(playerNum)
        cpuCard = "card" + String(cpuNum)
        
        updateScore(playerNum: playerNum, cpuNum: cpuNum)
    }
    
    func updateScore(playerNum: Int, cpuNum: Int){
        if playerNum > cpuNum{
            playerScore += 1
        }
        else if playerNum < cpuNum{
            cpuScore += 1
        }
    }
}

#Preview {
    WarGameView()
}
