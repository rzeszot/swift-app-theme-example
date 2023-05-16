import SwiftUI
import Style

struct ContentView: View {
    enum CurrentTheme: Hashable {
        case happy
        case sad
    }

    @State
    var current: CurrentTheme = .happy

    var body: some View {
        VStack {
            Picker("Theme", selection: $current) {
                Text("Happy").tag(CurrentTheme.happy)
                Text("Sad").tag(CurrentTheme.sad)
            }
            .pickerStyle(.segmented)

            Divider()
                .padding()

            VStack {
                Button("Primary", action: {})
                    .buttonStyle(.primary)
                Button("Secondary", action: {})
                    .buttonStyle(.secondary)
            }
            .transition(.opacity.animation(.easeIn(duration: 5)))
            .theme(current == .happy ? .happy : .sad)
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
