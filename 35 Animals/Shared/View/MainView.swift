//
//  MainView.swift
//  Animals
//
//  Created by Ron Erez on 7/9/22.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        
        TabView {
            AnimalView1()
                .tabItem {
                    Label( "No drag", systemImage: "1.circle")
                }
            AnimalView2()
                .tabItem {
                    Label( "Scroll View", systemImage: "2.circle")
                }
            AnimalView3()
                .tabItem {
                    Label( "Drag", systemImage: "3.circle")
                }
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
