//
//  ContentView.swift
//  swiftpractice
//
//  Created by Kavith Ranchagoda on 2026-03-22.
//

import SwiftUI

struct DestinationRatingView: View {
    var body: some View {
        ZStack{
            Color(.mint).ignoresSafeArea()
            
            VStack(alignment: .leading, spacing: 20) {
                Image("sigiriya")
                    .resizable()
                    .scaledToFit()
                    .cornerRadius(20)
                
                HStack{
                    Text("Mount Sigiriya")
                        .font(.title)
                        .bold()
                    
                    Spacer()
                    VStack{
                        HStack{
                            Image(systemName: "star.fill")
                            Image(systemName: "star.fill")
                            Image(systemName: "star.fill")
                            Image(systemName: "star.fill")
                            Image(systemName: "star.leadinghalf.filled")
                        }
                        Text("(Reviews 1045)")
                    }
                    .foregroundStyle(.orange)
                    .font(.caption)
                }
                
                
                Text("A rich experience of Sri Lankan history & culture")
                
                HStack{
                    Spacer()
                    Image(systemName: "fork.knife")
                    Image(systemName: "binoculars.fill")
                }
                .foregroundStyle(.gray)
                .font(.caption)
            }
            .padding()
            .background{
                Rectangle()
                    .foregroundStyle(.white)
                    .clipShape(RoundedRectangle(cornerRadius: 16, style: .continuous))
                    .shadow(radius:15)
            }
            .padding()
        }
    }
}

#Preview {
    DestinationRatingView()
}
