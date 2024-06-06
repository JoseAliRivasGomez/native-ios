//
//  MainTabView.swift
//  Meditation App
//
//  Created by Ron Erez on 4/28/22.
//

import SwiftUI

struct MainTabView: View {
    var body: some View {
        TabView {
            HomeScreenView()
                .tabItem {
                    Label( "Home", systemImage: "house")
                }
            MeditateScreenView()
                .tabItem {
                    Label( "Meditate", systemImage: "drop")
                }
            SleepScreenView()
                .tabItem {
                    Label( "Sleep", systemImage: "moon")
                }
            MusicView()
                .tabItem {
                    Label( "Music", systemImage: "music.note")
                }
            ProfileView()
                .tabItem {
                    Label( "Profile", systemImage: "person")
                }
        }
    }
}

struct MainTabView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            MainTabView()
            MainTabView()
                .preferredColorScheme(.dark)
            MainTabView()
                .previewDevice("iPod touch (7th generation)")
            MainTabView()
                .previewDevice("iPhone 12 Pro Max")
        }
    }
}
