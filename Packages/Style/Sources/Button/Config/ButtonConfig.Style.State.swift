import SwiftUI

extension ButtonConfig.Style {
    public struct State {
        public let background: Color
        public let border: Color
        public let text: Color

        public init(background: Color, border: Color, text: Color) {
            self.background = background
            self.border = border
            self.text = text
        }
    }
}
