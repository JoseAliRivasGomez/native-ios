//
//  ManageTasksTextView.swift
//  Task Manager Mobile App Design
//
//  Created by Ron Erez on 5/2/22.
//

import SwiftUI

struct ManageTasksTextView: View {
    var body: some View {
        Text("Manage your daily tasks")
            .font(.largeTitle)
            .fontWeight(.bold)
        .foregroundColor(Color("darkBlue1"))
        
        Text("Team and Project management with solution providing App")
            .font(.headline)
            .fontWeight(.bold)
        .foregroundColor(Color("darkBlue1"))
    }
}
struct ManageTasksTextView_Previews: PreviewProvider {
    static var previews: some View {
        ManageTasksTextView()
    }
}
