//
//  HomeScreenView.swift
//  swiftpractice
//
//  Created by Kavith Ranchagoda on 2026-03-25.
//

import SwiftUI

struct HomeScreenView: View {
    var body: some View {
        VStack(){
            NavigationStack{
                Text("Kavith's\nSwift & SwiftUI\nPractice")
                    .font(Font.largeTitle)
                    .bold()
                    .multilineTextAlignment(.center)
                
                HStack(spacing: 20){
                    NavigationLink{
                        DestinationRatingView()
                    } label: {
                        SquareIconButton(icon: "mountain.2", colour1: .mint, colour2: .blue)
                    }
                    
                    NavigationLink(){
                        WarGameView()
                    } label: {
                        SquareIconButton(icon: "figure.fencing", colour1: .orange, colour2: .pink)
                    }
                    
                    NavigationLink(){
                        WarGameView()
                    } label: {
                        SquareIconButton(icon: "dollarsign.bank.building.fill", colour1: .yellow, colour2: .green)
                    }
                }
            }
        }
    }
}

#Preview {
    HomeScreenView()
}

struct SquareIconButton: View {
    let icon: String
    let colour1: Color
    let colour2: Color

    var body: some View {
        Image(systemName: icon)
            .font(.system(size: 40))
            .foregroundColor(.white)
            .frame(width: 100, height: 100)
            .background(
                LinearGradient(colors: [colour1, colour2],
                               startPoint: .top,
                               endPoint: .bottom)
            )
            .cornerRadius(12)
            .shadow(radius: 3)
    }
}
