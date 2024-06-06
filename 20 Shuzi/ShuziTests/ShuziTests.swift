//
//  ShuziTests.swift
//  ShuziTests
//
//  Created by Ron Erez on 30/10/2023.
//

import XCTest
@testable import Shuzi

final class ShuziTests: XCTestCase {

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


    func testMax() throws {
        // Setup data
        let dataArray = [
            (x: 3, y: 10, z: 7),
            (x: 3, y: 7, z: 10),
            (x: 7, y: 10, z: 3),
            (x: 7, y: 3, z: 10),
            (x: 10, y: 3, z: 7),
            (x: 10, y: 7, z: 3),
            (x: 5, y: 5, z: 5),
            (x: -15, y: 15, z: 0)
        ]
        
        // Expected values
        let expectedValues = [
            10,10,10,10,10,10,5,15
        ]
        
        // Test
        for i in 0..<dataArray.count {
            let data = dataArray[i]
            let expectedValue = expectedValues[i]
            let evaluatedValue = myMax(x: data.x, y: data.y, z: data.z)
            
            XCTAssertEqual(expectedValue, evaluatedValue)
        }
        
    }

}
