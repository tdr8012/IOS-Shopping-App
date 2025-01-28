//
//  OnboardiingScreen.swift
//  Shopping App (07256)
//
//  Created by english on 2024-10-03.
//

import SwiftUI

struct OnboardiingScreen: View {
    var body: some View {
        NavigationView{
            VStack(spacing: 30){
                Spacer()
                Image("img")
                    .resizable()
                    .scaledToFit()
                    .padding()
                VStack(alignment: .leading, spacing: 10){
                    Text("Order Your Favorite Fruits.")
                        .fontWeight(.bold)
                        .font(.system(.largeTitle))
                    Text("Eat fresh fruits and try to be healthy.")
                        .fontWeight(.bold)
                        .foregroundStyle(.black.opacity(0.7))
                    
                    
                    Spacer()
                    NavigationLink(destination: HomeScreen()){
                        RoundedRectangle(cornerRadius: 12).fill(Color("6"))
                            .frame(width: 300, height: 60, alignment: .trailing)
                            .overlay{
                                HStack(spacing: 10){
                                    Text("Next")
                                        .font(.title)
                                        .fontWeight(.bold)
                                    Image(systemName: "chevron.right")
                                }.padding()
                                    .foregroundStyle(.black)
                            }
                    }
                }
                Spacer()
            }
        }
        .navigationTitle("")
        .navigationBarHidden(true)
    }
    
}

#Preview {
    OnboardiingScreen()
}
