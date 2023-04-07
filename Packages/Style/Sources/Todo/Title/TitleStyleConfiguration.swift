import SwiftUI

public struct TitleStyleConfiguration {
    public struct Title: View {
        var _storage: any View

        init(_ view: some View) {
            _storage = view
        }

        public var body: some View {
            AnyView(_storage)
        }
    }

    public struct Icon: View {
        var _storage: any View

        init(_ view: some View) {
            _storage = view
        }

        public var body: some View {
            AnyView(_storage)
        }
    }

    public let title: Title
    public let icon: Icon
}
