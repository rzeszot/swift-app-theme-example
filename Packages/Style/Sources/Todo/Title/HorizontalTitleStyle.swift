import SwiftUI

public struct HorizontalTitleStyle: TitleStyle {
    public func makeBody(configuration: Configuration) -> some View {
        HStack {
            configuration.title
            Divider()
            configuration.icon
        }
        .background {
            Color.yellow
        }
    }
}

extension TitleStyle where Self == HorizontalTitleStyle {
    public static var horizontal: Self { HorizontalTitleStyle() }
}
