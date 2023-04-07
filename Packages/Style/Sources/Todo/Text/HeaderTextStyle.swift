import SwiftUI

public struct HeaderTextStyle: TextStyle {
    @Environment(\.theme)
    private var theme: Theme

    public func body(content: Content) -> some View {
        content
            .font(theme.text.header.font)
            .foregroundColor(theme.text.header.color)
    }
}

extension TextStyle where Self == HeaderTextStyle {
    public static var header: Self {
        HeaderTextStyle()
    }
}

struct HeaderTextStyle_Previews: PreviewProvider {
    static var previews: some View {
        Text("hello world!")
            .textStyle(.header)
    }
}
