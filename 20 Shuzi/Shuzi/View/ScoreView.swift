//
//  ScoreView.swift
//  Shuzi
//
//  Created by Ron Erez on 24/11/2023.
//

import SwiftUI

struct ScoreView: View {
    let score: Int
    let maxTurns: Int
    var body: some View {
        Text("Score: \(score) out of \(maxTurns)")
            .bold()
            .font(.largeTitle)
    }
}

#Preview {
    ScoreView(score: 2, maxTurns: 5)
}
