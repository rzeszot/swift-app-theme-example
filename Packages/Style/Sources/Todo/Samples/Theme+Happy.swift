import SwiftUI
import Style

extension Theme {
    public static var happy: Self {
        .init(
            button: .happy,
            text: .happy
        )
    }
}

extension Theme.Text {
    public static var happy: Self {
        .init(
            header: .init(
                font: .body.bold(),
                color: .blue
            ),
            body: .init(
                font: .body,
                color: .blue
            )
        )
    }
}

extension Theme.Button {
    public static var happy: Self {
        .init(
            primary: .happy_primary,
            secondary: .happy_secondary
        )
    }
}

extension Theme.Button.Style {
    public static var happy_primary: Self {
        .init(
            normal: .happy_primary_normal,
            pressed: .happy_primary_pressed,
            disabled: .happy_primary_disabled
        )
    }
}

extension Theme.Button.Style {
    public static var happy_secondary: Self {
        .init(
            normal: .happy_secondary_normal,
            pressed: .happy_secondary_pressed,
            disabled: .happy_secondary_disabled
        )
    }
}

extension Theme.Button.Style.State {
    public static var happy_primary_normal: Self {
        .init(
            background: Color(hexadecimal: 0xFF0022),
            border: Color(hexadecimal: 0xFF0022),
            text: Color(hexadecimal: 0xFFFFFF)
        )
    }
    public static var happy_primary_pressed: Self {
        .init(
            background: Color(hexadecimal: 0xD90022),
            border: Color(hexadecimal: 0xD90022),
            text: Color(hexadecimal: 0xF5F5F5)
        )
    }
    public static var happy_primary_disabled: Self {
        .init(
            background: Color(hexadecimal: 0xADADB1),
            border: Color(hexadecimal: 0xADADB1),
            text: Color(hexadecimal: 0x6A6B70)
        )
    }
}

extension Theme.Button.Style.State {
    public static var happy_secondary_normal: Self {
        .init(
            background: Color(hexadecimal: 0xFFFFFF),
            border: Color(hexadecimal: 0xADADB1),
            text: Color(hexadecimal: 0x282830)
        )
    }
    public static var happy_secondary_pressed: Self {
        .init(
            background: Color(hexadecimal: 0xFFFFFF),
            border: Color(hexadecimal: 0x7D7D83),
            text: Color(hexadecimal: 0x282830)
        )
    }
    public static var happy_secondary_disabled: Self {
        .init(
            background: Color(hexadecimal: 0xFFFFFF),
            border: Color(hexadecimal: 0xF1F1F2),
            text: Color(hexadecimal: 0xADADB1)
        )
    }
}
