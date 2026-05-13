import SwiftUI

struct SelectButtonView: View {
    let percentage: Int
    let color1: Color
    let color2: Color
    
    @Binding var selectedTip: Int
    @Binding var tipPercentage: Int
    
    let shadowOpacity = 0.3
    
    var isPressed: Bool {
        selectedTip == percentage
    }
    
    var body: some View {
        Text("\(percentage)")
            .padding()
            .foregroundStyle(isPressed ? color2 : color1)
            .background(isPressed ? color1.opacity(0.7) : color2.opacity(0.7))
            .clipShape(Capsule())
            .shadow(
                color: isPressed ? color2.opacity(shadowOpacity) : color1.opacity(shadowOpacity),
                radius: 3,
                x: 2,
                y: 2
            )
            .onTapGesture {
                withAnimation {
                    selectedTip = percentage
                    tipPercentage = percentage
                }
            }
    }
}

#Preview {
    ZStack {
        Color.myLightGreen.ignoresSafeArea()
        SelectButtonView(
            percentage: 10,
            color1: .myDarkGreen,
            color2: .myWhite,
            selectedTip: .constant(5),
            tipPercentage: .constant(TipPercentage.ten.rawValue)
        )
    }
}
