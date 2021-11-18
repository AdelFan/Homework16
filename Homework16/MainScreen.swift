//
//  MainScreen.swift
//  Homework16
//
//  Created by Адель Ахметшин on 18.11.2021.
//

import SwiftUI

struct MainScreen: View {
    
    init() {
        UITabBar.appearance().backgroundColor = .systemGray5
    }
    var body: some View {
        ZStack {
            TabView {
                ZStack {
                    VStack {
                        Media()
                    }
                }
                .tabItem {
                    Image(systemName: "music.note.house.fill")
                    Text("Медиатека")
                }
                
                VStack {
                    Text("Радио")
                        .bold()
                        .multilineTextAlignment(.center)
                        .font(.title)
                }
                .tabItem {
                    Image(systemName: "dot.radiowaves.left.and.right")
                    Text("Радио")
                }
                VStack {
                    Text("Поиск")
                        .bold()
                        .multilineTextAlignment(.center)
                        .font(.title)
                }
                .tabItem {
                    Image(systemName: "magnifyingglass")
                    Text("Поиск")
                }
            }
            .accentColor(.red)
            Player()
        }
    }
}

struct MainScreen_Previews: PreviewProvider {
    static var previews: some View {
        MainScreen()
    }
}
