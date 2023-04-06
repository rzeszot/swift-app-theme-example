import Foundation

extension Theme {
    public struct Button {
        public let primary: Style
        public let secondary: Style

        public init(primary: Style, secondary: Style) {
            self.primary = primary
            self.secondary = secondary
        }
    }
}

