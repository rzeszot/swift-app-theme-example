import SwiftUI

public struct VerticalTitleStyle: TitleStyle {
    public func makeBody(configuration: Configuration) -> some View {
        HStack {
            configuration.title
            Divider()
            configuration.icon
        }
        .background {
            Color.pink
        }
    }
}

extension TitleStyle where Self == VerticalTitleStyle {
    public static var vertical: Self { VerticalTitleStyle() }
}
