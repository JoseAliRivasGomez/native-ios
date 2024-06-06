//
//  MainView.swift
//  Greetings-Mac
//
//  Created by Ron Erez on 18/10/2023.
//

import SwiftUI

struct MainView: View {
    @Binding var language: String
    @Binding var layoutDirectionString: String

    var body: some View {
        NavigationStack {
            GreetingsView()
                .toolbar {
                    ToolbarItem(placement: .navigation) {
                        LanguageOptionsTapView(
                            language: $language,
                            layoutDirectionString: $layoutDirectionString)
                    }
                }
        }
    }
}

#Preview {
    MainView(
        language: .constant("en"),
        layoutDirectionString: .constant(LEFT_TO_RIGHT))
}
