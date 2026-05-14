import SwiftUI

struct TitleView: View {
    let alignment: TextAlignment
    init(alignment: TextAlignment = .center) {
        self.alignment = alignment
    }
    var fontWeight: Font.Weight {
        isIPad ? .bold : .semibold
    }
    
    
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    @Environment(\.verticalSizeClass) var verticalSizeClass
    
    var isIPad: Bool {
        horizontalSizeClass == .regular && verticalSizeClass == .regular
    }
    
    var isPortaitPhone: Bool {
        horizontalSizeClass == .compact && verticalSizeClass == .regular
    }
    var body: some View {
        Text("Tip Calculator")
            .font(.largeTitle)
            .fontWeight(fontWeight)
            .multilineTextAlignment(alignment)
    }
}

#Preview {
    TitleView()
}
