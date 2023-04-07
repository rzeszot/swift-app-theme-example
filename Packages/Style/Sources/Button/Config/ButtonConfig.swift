import SwiftUI

public struct ButtonConfig {
    public let primary: Style
    public let secondary: Style

    public init(primary: Style, secondary: Style) {
        self.primary = primary
        self.secondary = secondary
    }
}

extension ButtonConfig {
    static var whitelabel: Self {
        .init(
            primary: .init(
                normal: .init(
                    background: .blue,
                    border: .blue,
                    text: .white
                ),
                pressed: .init(
                    background: .blue.opacity(0.7),
                    border: .blue.opacity(0.7),
                    text: .white
                ),
                disabled: .init(
                    background: .blue.opacity(0.2),
                    border: .blue.opacity(0.2),
                    text: .gray
                )
            ),
            secondary: .init(
                normal: .init(
                    background: .white,
                    border: .blue,
                    text: .blue
                ),
                pressed: .init(
                    background: .white,
                    border: .blue.opacity(0.7),
                    text: .blue.opacity(0.7)
                ),
                disabled: .init(
                    background: .white,
                    border: .blue.opacity(0.2),
                    text: .gray
                )
            )
        )
    }
}
