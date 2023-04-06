import SwiftUI

public struct PrimaryButtonStyle: ButtonStyle {
    @Environment(\.theme)
    private var theme: Theme

    @Environment(\.isEnabled)
    private var isEnabled: Bool

    public func makeBody(configuration: Configuration) -> some View {
        let style = theme.button.primary
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

extension ButtonStyle where Self == PrimaryButtonStyle {
    public static var primary: Self {
        PrimaryButtonStyle()
    }
}

struct PrimaryButtonStyle_Previews: PreviewProvider {
    static var previews: some View {
        HStack {
            VStack {
                Button("Hello world", action: {})
                Button("Hello world", action: {})
                    .disabled(true)
            }
            .buttonStyle(.primary)
        }
    }
}
