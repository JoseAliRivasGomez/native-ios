//
//  BottomOfGettingStartedView.swift
//  Task Manager Mobile App Design
//
//  Created by Ron Erez on 5/2/22.
//

import SwiftUI

struct BottomOfGettingStartedView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 30) {
            
            ManageTasksTextView()

            StartActionView()
        
        }.padding()

    }
}

struct BottomOfGettingStartedView_Previews: PreviewProvider {
    static var previews: some View {
        BottomOfGettingStartedView()
    }
}
