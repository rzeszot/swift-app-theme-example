import SwiftUI

public protocol TitleStyle {
    associatedtype Body: View
    typealias Configuration = TitleStyleConfiguration

    @ViewBuilder func makeBody(configuration: Configuration) -> Body
}

extension View {
    public func titleStyle<S: TitleStyle>(_ style: S) -> some View {
        environment(\.titleStyle, style)
    }
}
