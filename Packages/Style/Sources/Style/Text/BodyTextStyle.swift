import SwiftUI

public struct BodyTextStyle: TextStyle {
    @Environment(\.theme)
    private var theme: Theme

    public func body(content: Content) -> some View {
        content
            .font(theme.text.body.font)
            .foregroundColor(theme.text.body.color)
    }
}

extension TextStyle where Self == BodyTextStyle {
    public static var body: Self {
        BodyTextStyle()
    }
}

struct BodyTextStyle_Previews: PreviewProvider {
    static var previews: some View {
        Text("hello world!")
            .textStyle(.body)
    }
}
