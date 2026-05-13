import SwiftUI

struct PaymentSummaryView: View {
    let tipPercentage: Int
    let split: Int
    let bill: Double
    
    // TODO: Calculate based on inputs
    var totalPerPerson: String {
        "300"
    }
    var billPerPerson: String {
        "250"
    }
    var tipPerPerson: String {
        "50"
    }
    
    // TODO: Add iPad support (.largeTitle)
    var font: Font = .headline
    
    var body: some View {
        GroupBox {
            VStack {
                SubTotalView(
                    title: "Total per person",
                    titleFont: font,
                    amount: totalPerPerson,
                    amountFont: font
                )
                .frame(maxHeight: .infinity)
                
                HStack {
                    SubTotalView(
                        title: "Bill",
                        titleFont: font,
                        amount: billPerPerson,
                        amountFont: font
                    )
                    .frame(maxHeight: .infinity)
                    SubTotalView(
                        title: "Tip",
                        titleFont: font,
                        amount: tipPerPerson,
                        amountFont: font
                    )
                    .frame(maxHeight: .infinity)
                }
            }
        } label: {
            Label("Summary", systemImage: "book")
                .font(font)
                .fontWeight(.semibold)
                .foregroundStyle(.secondary)
                .padding()
        }
        .backgroundStyle(.myLightGreen.opacity(0.8))
        .clipShape(.rect(cornerRadius: 20))

    }
}

#Preview {
    VStack {
        RoundedRectangle(cornerRadius: 20)
            .fill(.blue.opacity(0.3))
        
        PaymentSummaryView(
            tipPercentage: 20,
            split: 2,
            bill: 500
        )
    }.padding()
}
