import SwiftUI

struct TipCalculatorView: View {
    @State private var isFocused: Bool = false
    
    @State private var tipModel: TipModel = .init(
        tipPercentage: 20,
        split: 1,
        bill: 0.0
    )
    
    let maxSplit: Int = 10
    var body: some View {
        ZStack {
            BackgroundView()
            
            VStack {
                Text("Title View")
                
                Spacer()
                
                VStack(alignment: .leading) {
                    EnterTotalView(
                        bill: $tipModel.bill,
                        isFocused: $isFocused
                    )
                    
                    ChooseTipView(
                        tipPercentage: $tipModel.tipPercentage
                    )
                }
                
                Text("Split View")
                
                Spacer()
                
                // Payment summmary
                if !isFocused {
                    PaymentSummaryView(
                        tipModel: tipModel
                    )
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
