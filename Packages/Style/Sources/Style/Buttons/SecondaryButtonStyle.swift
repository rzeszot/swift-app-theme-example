import SwiftUI

public struct SecondaryButtonStyle: ButtonStyle {
    @Environment(\.theme)
    private var theme: Theme

    @Environment(\.isEnabled)
    private var isEnabled: Bool

    public func makeBody(configuration: Configuration) -> some View {
        let style = theme.button.secondary
        let state = style.when(enable: isEnabled, press: configuration.isPressed)

        HStack {
            configuration.label
        }
        .foregroundColor(state.text)
        .padding()
        .background {
            state.background
        }
        .clipShape(Capsule())
        .overlay {
            Capsule()
                .stroke(state.border, lineWidth: 1)
        }
    }
}

extension ButtonStyle where Self == SecondaryButtonStyle {
    public static var secondary: Self {
        SecondaryButtonStyle()
    }
}

struct SecondaryButtonStyle_Previews: PreviewProvider {
    static var previews: some View {
        HStack {
            VStack {
                Button("Hello world 2", action: {})
                Button("Hello world", action: {})
                    .disabled(true)
            }
            .buttonStyle(.secondary)
        }
    }
}
