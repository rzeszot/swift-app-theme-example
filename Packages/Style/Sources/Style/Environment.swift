import SwiftUI
import Button

extension View {
    public func theme(_ theme: Theme) -> some View {
        configure(button: ButtonConfig(theme: theme))
    }
}

extension ButtonConfig {
    init(theme: Theme) {
        self.init(
            primary: .init(
                normal: .init(
                    background: theme.primary,
                    border: theme.primary,
                    text: theme.background
                ),
                pressed: .init(
                    background: theme.primary.opacity(0.9),
                    border: theme.primary,
                    text: theme.background
                ),
                disabled: .init(
                    background: theme.primary.opacity(0.2),
                    border: theme.primary.opacity(0.2),
                    text: theme.background
                )
            ),
            secondary: .init(
                normal: .init(
                    background: theme.secondary,
                    border: theme.secondary,
                    text: theme.background
                ),
                pressed: .init(
                    background: theme.secondary,
                    border: theme.secondary,
                    text: theme.background
                ),
                disabled: .init(
                    background: theme.secondary,
                    border: theme.secondary,
                    text: theme.background
                )
            )
        )
    }
}
