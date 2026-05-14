import SwiftUI

struct PaymentSummaryView: View {
    let tipModel: TipModel
    
    // iPad Support
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    @Environment(\.verticalSizeClass) var verticalSizeClass
    
    var isIPad: Bool {
        horizontalSizeClass == .regular && verticalSizeClass == .regular
    }
    
    var font: Font  {
        isIPad ? .largeTitle : .headline
    }
    
    var body: some View {
        GroupBox {
            VStack {
                SubTotalView(
                    title: "Total per person",
                    titleFont: font,
                    amount: tipModel.totalPerPerson,
                    amountFont: font
                )
                .frame(maxHeight: .infinity)
                
                HStack {
                    SubTotalView(
                        title: "Bill",
                        titleFont: font,
                        amount: tipModel.billPerPerson,
                        amountFont: font
                    )
                    .frame(maxHeight: .infinity)
                    SubTotalView(
                        title: "Tip",
                        titleFont: font,
                        amount: tipModel.tipPerPerson,
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
            tipModel: .init(
                tipPercentage: 10,
                split: 5,
                bill: 100
            )
        )
    }.padding()
}
