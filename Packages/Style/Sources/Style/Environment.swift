import SwiftUI

private struct ThemeEnvironmentKey: EnvironmentKey {
    static let defaultValue: Theme = .default
}

extension EnvironmentValues {
    public var theme: Theme {
        get {
            self[ThemeEnvironmentKey.self]
        }
        set {
            self[ThemeEnvironmentKey.self] = newValue
        }
    }
}

extension View {
    public func theme(_ theme: Theme) -> some View {
        environment(\.theme, theme)
    }
}
