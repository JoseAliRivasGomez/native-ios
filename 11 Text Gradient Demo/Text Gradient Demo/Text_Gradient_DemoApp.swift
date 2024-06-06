//
//  Text_Gradient_DemoApp.swift
//  Text Gradient Demo
//
//  Created by Ron Erez on 3/26/23.
//

import SwiftUI

@main
struct Text_Gradient_DemoApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(colorList: [.yellow, .black.opacity(0.85), .orange])
        }
    }
}
