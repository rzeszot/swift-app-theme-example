import SwiftUI
import Style
import Samples

struct ContentView: View {
    enum Theme: Hashable {
        case happy
        case sad
    }

    @State
    var current: Theme = .happy

    var body: some View {
        VStack {
            Picker("Theme", selection: $current) {
                Text("Happy").tag(Theme.happy)
                Text("Sad").tag(Theme.sad)
            }
            .pickerStyle(.segmented)

            Divider()
                .padding()

            VStack {
                Text("Header!")
                    .textStyle(.header)
                Text("Lorem ipsum")
                    .textStyle(.body)
                Button("Primary", action: {})
                    .buttonStyle(.primary)
                Button("Secondary", action: {})
                    .buttonStyle(.secondary)
            }
            .transition(.opacity.animation(.easeIn(duration: 5)))
            .theme(current == .happy ? .happy : .sad)

            VStack {
                Title(title: Text("Title component"), icon: Image(systemName: "xmark"))
                    .titleStyle(.vertical)

                Title(title: Text("Title component"), icon: Image(systemName: "xmark"))
                    .titleStyle(.horizontal)
            }

            Divider()

            VStack {
                Title(title: Text("Title component"), icon: Image(systemName: "xmark"))
                Spacer()
                    .frame(height: 10)
                Title(title: Text("Title component"), icon: Image(systemName: "xmark"))
            }
            .titleStyle(.vertical)
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
