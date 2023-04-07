import SwiftUI

private struct ButtonConfigEnvironmentKey: EnvironmentKey {
    static let defaultValue: ButtonConfig = .whitelabel
}

extension EnvironmentValues {
    public var buttonConfig: ButtonConfig {
        get {
            self[ButtonConfigEnvironmentKey.self]
        }
        set {
            self[ButtonConfigEnvironmentKey.self] = newValue
        }
    }
}

extension View {
    public func configure(button config: ButtonConfig) -> some View {
        environment(\.buttonConfig, config)
    }
}
