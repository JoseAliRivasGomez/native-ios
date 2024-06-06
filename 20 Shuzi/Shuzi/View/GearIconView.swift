//
//  GearIconView.swift
//  Shuzi
//
//  Created by Ron Erez on 24/11/2023.
//

import SwiftUI

struct GearIconView: View {
    @Binding var showSettingsView: Bool
    
    var body: some View {
        VStack {
            HStack {
                Button(action: {
                    withAnimation {
                        showSettingsView
                            .toggle()
                    }
                }, label: {
                    Image(systemName: "gearshape")
                        .imageScale(.large)
                        .foregroundStyle(.black)
                        .padding()
                })
                    
                Spacer()
            }
            Spacer()
        }
    }
}

#Preview {
    ZStack {
        Color
            .blue
            .opacity(0.3)
            .ignoresSafeArea()
        GearIconView(showSettingsView: .constant(true))
    }
}
