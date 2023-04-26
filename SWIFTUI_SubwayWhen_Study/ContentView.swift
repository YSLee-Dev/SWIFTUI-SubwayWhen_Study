//
//  ContentView.swift
//  SWIFTUI_SubwayWhen_Study
//
//  Created by 이윤수 on 2023/04/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView{
            MainView()
                .tabItem {
                    Image(systemName: "house")
                }
            Color.gray
                .tabItem{
                    Image(systemName: "magnifyingglass")
                }
            Color.yellow
                .tabItem{
                    Image(systemName: "gearshape")
                }
        }
        .accentColor(.black)
        .onAppear{
            UITabBar.appearance().itemWidth = 50.0
            UITabBar.appearance().itemPositioning = .centered
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
