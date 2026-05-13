import SwiftUI

struct TipCalculatorView: View {
    @State private var tipPercentage = 20
    @State private var split: Int = 1
    @State private var bill: Double = 20.0
    @State private var isFocused: Bool = false
    
    let maxSplit: Int = 10
    var body: some View {
        ZStack {
            Color.blue.opacity(0.3).ignoresSafeArea()
            
            VStack {
                Text("Title View")
                
                Spacer()
                
                VStack(alignment: .leading) {
                    Text("Enter Total View")
                    
                    Text("Choose Tip View")
                }
                
                Text("Split View")
                
                Spacer()
                
                // Payment summmary
                if !isFocused {
                    Text("Payment Summary")
                    Spacer()
                }
            }
            .padding()
        }
        .onTapGesture {
            // TODO: Implement tap out
            print("Implement tax outside of text field")
        }
    }
}

#Preview {
    TipCalculatorView()
}
