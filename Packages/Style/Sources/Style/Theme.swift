import SwiftUI

public struct Theme {
    public let primary: Color
    public let secondary: Color
    public let background: Color

    public init(primary: Color, secondary: Color, background: Color) {
        self.primary = primary
        self.secondary = secondary
        self.background = background
    }
}

extension Theme {
    static var blue: Theme {
        .init(
            primary: .blue,
            secondary: .blue.opacity(0.8),
            background: .white
        )
    }

    static var red: Theme {
        .init(
            primary: .red,
            secondary: .red.opacity(0.8),
            background: .white
        )
    }
}

struct Theme_Previews: PreviewProvider {
    static var previews: some View {
        let content = VStack {
            Button("Hello world", action: {})
            Button("Hello world", action: {})
                .disabled(true)
        }
        .buttonStyle(.primary)

        VStack {
            VStack {
                Text("Theme BLUE")
                content
            }
            .theme(.blue)

            Divider()

            VStack {
                Text("Theme RED")
                content
            }
            .theme(.red)
        }
    }
}
