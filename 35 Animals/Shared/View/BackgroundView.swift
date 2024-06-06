//
//  BackgroundView.swift
//  Animals
//
//  Created by Ron Erez on 6/8/22.
//

import SwiftUI

struct backgroundView: View {
    var body: some View {
        LinearGradient(gradient: Gradient(colors: [Color.pink,Color.yellow, Color.blue, Color.red]), startPoint: .topLeading, endPoint: .bottomTrailing)
            .opacity(0.7)
            .ignoresSafeArea()
    }
}

struct BackgroundView_Previews: PreviewProvider {
    static var previews: some View {
        backgroundView()
    }
}
