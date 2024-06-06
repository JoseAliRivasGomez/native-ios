//
//  EnterTotalView.swift
//  Tip Calculator
//
//  Created by Ron Erez on 7/20/22.
//

import SwiftUI

struct EnterTotalView: View {
    
    @Binding var bill: Double
    @State private var animate: Bool = false
    
    var body: some View {
        let width = UIScreen.main.bounds.width
        
        VStack(alignment: .leading, spacing: 0) {
            Text("Enter Total")
                .foregroundColor(gray)
            .multilineTextAlignment(.leading)
            
            TextField("Amount",
                      value: $bill,
                      format: .currency(
                        code: Locale.current.currencyCode ?? "USD"))
            .keyboardType(.decimalPad)
            .frame(width: width / 2)
            .font(.largeTitle.weight(.semibold))
            .foregroundColor(red)
            .scaleEffect(animate ? 1.05 : 1.0)
            .animation(.easeInOut(duration: 2).repeatForever(), value: animate)
            .onAppear {
                animate = true
            }
            
        }
    }
}


