import Foundation

extension Theme {
    public struct Text {
        public let header: Style
        public let body: Style

        public init(header: Style, body: Style) {
            self.header = header
            self.body = body
        }
    }
}
