import SwiftUI

public struct Title: View {
    private let configuration: TitleStyleConfiguration

    @Environment(\.titleStyle)
    private var titleStyle: any TitleStyle

    public init(configuration: TitleStyleConfiguration) {
        self.configuration = configuration
    }

    public init(title: Text, icon: Image) {
        let configuration = TitleStyleConfiguration(
            title: TitleStyleConfiguration.Title(title),
            icon: TitleStyleConfiguration.Icon(icon)
        )

        self.init(configuration: configuration)
    }

    public var body: some View {
        let xxx = titleStyle.makeBody(configuration: configuration)
        return AnyView(erasing: xxx)
    }
}

struct Title_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            Title(title: Text("Hello"), icon: Image(systemName: "xmark"))
        }
    }
}
