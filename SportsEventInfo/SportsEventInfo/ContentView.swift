//
//  ContentView.swift
//  SportsEventInfo
//
//  Created by Tin Duong on 2/23/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Image("football")
                    .resizable()
                    .frame(width: 50, height: 50)
                    .padding(.leading, 10)
                Text("Football")
                    .padding(.leading, 10)
            }
            Text("Matchup: Missouri Vs Tenessee")
            Text("When: Oct 2, 2021 at 11:30 am")
            
            Image("TNvsMO_Oct2_2022")
                .resizable()
                .scaledToFit()
            
            Image("TNvsMO_GameLeaders")
                .resizable()
                .scaledToFit()
        }
        .padding()
    }
}
#Preview {
    ContentView()
}
