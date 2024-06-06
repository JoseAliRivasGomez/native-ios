//
//  main.swift
//  Exercise My Logarithm
//
//  Created by Ron Erez on 10/04/2024.
//

import Foundation

// MARK: GOAL: Implement the natural logarithm of x using the MacLaurin series of log(1+x).
//
// ln(1 + x) = x - x^2 / 2 + x^3 / 3 - x^4 / 4 + x^5 / 5 ... + (-1)^n+1 * x / n + ...
//
//
// Therefore if we substitute x-1 into this formula we will obtain ln(x).
//
// ln(x) = ln(1 + (x-1)) = (x-1) - (x-1)^2 / 2 + (x-1)^3 / 3 - (x-1)^4 / 4 + (x-1)^5 / 5 ... + (-1)^n+1 * (x-1) / n + ...
//
// For example if we want ln(exp(1.0)) then calculate y=e-1 and then substitute y:
// y - y^2 / 2 + y^3 / 3 - y^4 / 4 + y^5 / 5 ... + (-1)^n+1 * y / n + ...
//
// where y = x - 1.
// Note that if x = 0 then return -inf
// If x < 0 return nan
//
//

print(log(0.0)) // -Double.infinity
print(log(-13.0))   // Double.nan

func myLog( _ x: Double, threshold: Double = pow(10,-6)) -> Double {
    return 0
}

func compareLogarithms(x: Double) {
    print("log(\(x)) = \(log(x))")
    print("myLog(\(x)) = \(myLog(x))")
    print("")
}

// Test values
for x in stride(from: -10.0, to: 0.0, by: 1.0) {
    compareLogarithms(x: exp(x))
}

for x in [0.0001, 0.01, 0.73, 1] {
    compareLogarithms(x: 0.5)
}





/*
 EXPECTED OUTPUT:
 
 log(4.5399929762484854e-05) = -10.0
 myLog(4.5399929762484854e-05) = -9.982919105377894

 log(0.00012340980408667956) = -9.0
 myLog(0.00012340980408667956) = -8.99344002448517

 log(0.00033546262790251185) = -8.0
 myLog(0.00033546262790251185) = -7.997510634031645

 log(0.0009118819655545162) = -7.0
 myLog(0.0009118819655545162) = -6.999062472003188

 log(0.0024787521766663585) = -6.0
 myLog(0.0024787521766663585) = -5.9996499525031615

 log(0.006737946999085467) = -5.0
 myLog(0.006737946999085467) = -4.999869629885133

 log(0.01831563888873418) = -4.0
 myLog(0.01831563888873418) = -3.9999524866873672

 log(0.049787068367863944) = -3.0
 myLog(0.049787068367863944) = -2.9999828108274054

 log(0.1353352832366127) = -2.0
 myLog(0.1353352832366127) = -1.9999949191809372

 log(0.36787944117144233) = -1.0
 myLog(0.36787944117144233) = -0.9999989285523087

 log(0.5) = -0.6931471805599453
 myLog(0.5) = -0.6931463282650033

 log(0.5) = -0.6931471805599453
 myLog(0.5) = -0.6931463282650033

 log(0.5) = -0.6931471805599453
 myLog(0.5) = -0.6931463282650033

 log(0.5) = -0.6931471805599453
 myLog(0.5) = -0.6931463282650033
 
 */




