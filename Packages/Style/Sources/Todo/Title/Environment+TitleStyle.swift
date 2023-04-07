import SwiftUI

enum TitleStyleEnvironmentKey: EnvironmentKey {
    static var defaultValue: any TitleStyle = VerticalTitleStyle()
}

extension EnvironmentValues {
    public var titleStyle: any TitleStyle {
        get {
            self[TitleStyleEnvironmentKey.self]
        }
        set {
            self[TitleStyleEnvironmentKey.self] = newValue
        }
    }
}
