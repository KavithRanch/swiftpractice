//
//  ContentView.swift
//  swiftpractice
//
//  Created by Kavith Ranchagoda on 2026-03-22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .leading) {
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
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
