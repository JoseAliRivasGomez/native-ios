//
//  TitleView.swift
//  Task Manager Mobile App Design (iOS)
//
//  Created by Ron Erez on 5/3/22.
//

import SwiftUI

struct TitleView: View {
    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: 7) {
                Text("Hi Ron")
                    .font(.title)
                    .fontWeight(.semibold)
                    .foregroundColor(white)
                
                Text("6 Tasks are pending")
                    .font(.headline)
                    .fontWeight(.thin)
                    .foregroundColor(white)
            }
            Spacer()
        }.padding()
    }
}

struct TitleView_Previews: PreviewProvider {
    static var previews: some View {
        TitleView()
    }
}
