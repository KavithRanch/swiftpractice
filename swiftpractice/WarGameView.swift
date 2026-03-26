//
//  WarGameView.swift
//  swiftpractice
//
//  Created by Kavith Ranchagoda on 2026-03-25.
//

import SwiftUI

struct WarGameView: View {
    var body: some View {
        ZStack{
            Image("background-cloth")
            
            VStack(spacing:45){
                Image("logo")
                HStack(spacing: 40){
                    Image("card2")
                    Image("card9")
                }
                Image("button")
                
                HStack(spacing:90){
                    VStack(spacing:25){
                        Text("Player").font(Font.title2)
                        Text("0").font(Font.largeTitle.bold())
                    }
                    VStack(spacing:25){
                        Text("CPU").font(Font.title2)
                        Text("0").font(Font.largeTitle.bold())
                    }
                }
                .foregroundStyle(Color(.white))
            }
        }
    }
}

#Preview {
    WarGameView()
}
