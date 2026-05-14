//
//  ContentView.swift
//  Tip Calculator
//
//  Created by Marios Kanellopoulos on 13/5/26.
//

import SwiftUI

struct MainView: View {
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    @Environment(\.verticalSizeClass) var verticalSizeClass
    
    var isIPad: Bool {
        horizontalSizeClass == .regular && verticalSizeClass == .regular
    }
    
    var isPortaitPhone: Bool {
        horizontalSizeClass == .compact && verticalSizeClass == .regular
    }
    
    
    var body: some View {
        VStack {
            if isPortaitPhone {
                TipCalculatorView()
            } else {
                LandscapeTipCalculatorView()
            }
        }
        .padding()
    }
}

#Preview {
    MainView()
}
