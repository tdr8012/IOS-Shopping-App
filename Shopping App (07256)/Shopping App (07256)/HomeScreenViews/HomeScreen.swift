//
//  HomeScreen.swift
//  Shopping App (07256)
//
//  Created by english on 2024-10-03.
//

import SwiftUI

struct HomeScreen: View {
    var body: some View {
        ZStack {
            VStack(alignment: .leading, spacing: 10){
                HStack{
                    Image(systemName: "line.3.horizontal")
                    Spacer()
                    Image(systemName: "cart.badge.plus")
                }
                .font(.system(.title3))
                Text("Hey")
                    .font(.title)
                    .fontWeight(.bold)
                Text("Find fresh fruits that you want")
                
                RoundedRectangle(cornerRadius: 15)
                    .fill(.gray.opacity(0.3))
                    .overlay(
                        HStack{
                            Image(systemName: "magnifyingglass")
                            Text("Seach fresh fruits")
                                .foregroundColor(.gray)
                                .multilineTextAlignment(.leading)
                            Spacer()
                        }.padding()
                    ).frame(width: 350, height: 50, alignment: .center)
                
                Text("Top Selling")
                    .font(.title)
                    .fontWeight(.bold)
                TopsellingView()
                
                Text("Near you")
                    .font(.title)
                    .fontWeight(.bold)
                
                NearYouView()
                Spacer()
                
            }.padding()
        }.navigationBarTitle("")
            .navigationBarBackButtonHidden(true)
            .navigationBarHidden(true)
    }

}

#Preview {
    HomeScreen()
}
