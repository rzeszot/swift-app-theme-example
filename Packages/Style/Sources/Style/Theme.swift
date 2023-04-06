import SwiftUI

public struct Theme {
    public let button: Button
    public let text: Text

    public init(button: Button, text: Text) {
        self.button = button
        self.text = text
    }
}

extension Theme {
    static var `default`: Self {
        .init(
            button: .init(
                primary: .init(
                    normal: .init(
                        background: .red,
                        border: .red,
                        text: .white
                    ),
                    pressed: .init(
                        background: .green,
                        border: .green,
                        text: .white
                    ),
                    disabled: .init(
                        background: .blue,
                        border: .blue,
                        text: .white
                    )
                ),
                secondary: .init(
                    normal: .init(
                        background: .white,
                        border: .red,
                        text: .black
                    ),
                    pressed: .init(
                        background: .white,
                        border: .green,
                        text: .black
                    ),
                    disabled: .init(
                        background: .white,
                        border: .blue,
                        text: .black
                    )
                )
            ),
            text: .init(
                header: .init(
                    font: .title,
                    color: .accentColor
                ),
                body: .init(
                    font: .body,
                    color: .primary
                )
            )
        )
    }
}
