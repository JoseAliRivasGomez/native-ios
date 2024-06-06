//
//  ContainerView.swift
//  Shuzi
//
//  Created by Ron Erez on 28/11/2023.
//

import SwiftUI

struct ContainerView: View {
    @State private var splashScreenIsPresented = true
    var body: some View {
        if splashScreenIsPresented {
            SplashScreenView(isPresented: $splashScreenIsPresented)
                .disabled(!splashScreenIsPresented)
        } else {
            MainView()
        }
    }
}

#Preview {
    ContainerView()
        .environment(GameViewModel())
}
