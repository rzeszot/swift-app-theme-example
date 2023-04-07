import UIKit
import SwiftUI

extension Color {
    init(hexadecimal value: Int) {
        self.init(uiColor: UIColor(hexadecimal: value))
    }
}

extension UIColor {
    convenience init(hexadecimal value: Int) {
        self.init(
            red: (value >> 16) & 0xff,
            green: (value >> 8) & 0xff,
            blue: value & 0xff,
            alpha: 255
        )
    }
}

extension UIColor {
    convenience init(red: Int, green: Int, blue: Int, alpha: Int) {
        func normalize(_ value: Int) -> CGFloat {
            CGFloat(value) / 255
        }

        self.init(
            red: normalize(red),
            green: normalize(green),
            blue: normalize(blue),
            alpha: normalize(alpha)
        )
    }
}
