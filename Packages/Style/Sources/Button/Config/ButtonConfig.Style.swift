import SwiftUI

extension ButtonConfig {
    public struct Style {
        public let normal: State
        public let pressed: State
        public let disabled: State

        public init(normal: State, pressed: State, disabled: State) {
            self.normal = normal
            self.pressed = pressed
            self.disabled = disabled
        }

        public func when(enable: Bool, press: Bool) -> State {
            if !enable {
                return disabled
            } else if press {
                return pressed
            } else {
                return normal
            }
        }
    }
}
