//
//  ShuziApp.swift
//  Shuzi
//
//  Created by Ron Erez on 30/10/2023.
//

import SwiftUI

@main
struct ShuziApp: App {
    @State private var gVM: GameViewModel = GameViewModel()
    
    var body: some Scene {
        WindowGroup {
            ContainerView()
                .environment(gVM)
        }
    }
}
