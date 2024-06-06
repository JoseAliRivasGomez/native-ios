//
//  Charts_Demo_3App.swift
//  Charts Demo 3
//
//  Created by Ron Erez on 12/31/22.
//

import SwiftUI

@main
struct Charts_Demo_3App: App {
    var body: some Scene {
        WindowGroup {
            ContentView(
                dailySales: defaultDailySales,
                min: 0.0,
                max: 700.0,
                barColors: defaultBarColors)        }
    }
}
