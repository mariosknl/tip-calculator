//
//  BackgroundView.swift
//  Tip Calculator
//
//  Created by Marios Kanellopoulos on 13/5/26.
//

import SwiftUI

struct BackgroundView: View {
    var body: some View {
        ZStack {
            Color
                .white
                .opacity(0.9)
                .ignoresSafeArea()
            
            SinePathView()
        }
    }
}

#Preview {
    BackgroundView()
}
