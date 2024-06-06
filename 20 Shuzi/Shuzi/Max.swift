//
//  Max.swift
//  Shuzi
//
//  Created by Ron Erez on 30/10/2023.
//

import Foundation

func myMax(x: Int, y: Int, z: Int) -> Int {
    if x >= y && x >= z {
        x
    } else if y >= x && y >= z {
        y
    } else {
        z
    }
}

/*
 max(x: 3, y: 10, z: 7) = 10
 max(x: 3, y: 7, z: 10) = 10
 max(x: 7, y: 10, z: 3) = 10
 max(x: 7, y: 3, z: 10) = 10
 max(x: 10, y: 3, z: 7) = 10
 max(x: 10, y: 7, z: 3) = 10
 max(x: 5, y: 5, z: 5) = 5
 max(x: -15, y: 15, z: 0) = 15
 */
