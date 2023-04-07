import SwiftUI

public protocol TextStyle: ViewModifier {

}

extension View {
    public func textStyle<S: TextStyle>(_ style: S) -> some View {
        modifier(style)
    }
}

struct TextStyle_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            VStack {
                Text("hello")
                    .textStyle(.header)
                Text("world")
                    .textStyle(.body)
            }
        }
    }
}
