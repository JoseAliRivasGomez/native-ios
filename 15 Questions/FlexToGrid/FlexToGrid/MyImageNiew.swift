//
//  MyImageNiew.swift
//  FlexToGrid
//
//  Created by Ron Erez on 2/17/23.
//

import SwiftUI

struct MyImageNiew: View {
    let imageName: String
    var body: some View {
        Image(imageName)
            .resizable()
            .scaledToFit()
            .cornerRadius(10)
            .shadow(radius: 5)
    }
}

struct MyImageNiew_Previews: PreviewProvider {
    static var previews: some View {
        MyImageNiew(imageName: "imgPurpleLightening")
    }
}
