import SwiftUI
import Style

extension Theme {
    public static var sad: Self {
        .init(primary: .blue, secondary: .green, background: .white)
    }
}

//
////extension Theme.Text {
////    public static var sad: Self {
////        .init(
////            header: .init(
////                font: .body.bold(),
////                color: .red
////            ),
////            body: .init(
////                font: .body,
////                color: .red
////            )
////        )
////    }
////}
//
//extension Theme.Button {
//    public static var sad: Self {
//        .init(
//            primary: .sad_primary,
//            secondary: .sad_secondary
//        )
//    }
//}
//
//extension Theme.Button.Style {
//    public static var sad_primary: Self {
//        .init(
//            normal: .sad_primary_normal,
//            pressed: .sad_primary_pressed,
//            disabled: .sad_primary_disabled
//        )
//    }
//}
//
//extension Theme.Button.Style {
//    public static var sad_secondary: Self {
//        .init(
//            normal: .sad_secondary_normal,
//            pressed: .sad_secondary_pressed,
//            disabled: .sad_secondary_disabled
//        )
//    }
//}
//
//extension Theme.Button.Style.State {
//    public static var sad_primary_normal: Self {
//        .init(
//            background: Color(hexadecimal: 0x000000),
//            border: Color(hexadecimal: 0x000000),
//            text: Color(hexadecimal: 0xFFFFFF)
//        )
//    }
//    public static var sad_primary_pressed: Self {
//        .init(
//            background: Color(hexadecimal: 0x252627),
//            border: Color(hexadecimal: 0x252627),
//            text: Color(hexadecimal: 0xFBEFE9)
//        )
//    }
//    public static var sad_primary_disabled: Self {
//        .init(
//            background: Color(hexadecimal: 0xB9C0C2),
//            border: Color(hexadecimal: 0xB9C0C2),
//            text: Color(hexadecimal: 0x5D6061)
//        )
//    }
//}
//
//extension Theme.Button.Style.State {
//    public static var sad_secondary_normal: Self {
//        .init(
//            background: Color(hexadecimal: 0xFFFFFF),
//            border: Color(hexadecimal: 0x5D6061),
//            text: Color(hexadecimal: 0x252627)
//        )
//    }
//    public static var sad_secondary_pressed: Self {
//        .init(
//            background: Color(hexadecimal: 0xFFFFFF),
//            border: Color(hexadecimal: 0x000000),
//            text: Color(hexadecimal: 0xB9C0C2)
//        )
//    }
//    public static var sad_secondary_disabled: Self {
//        .init(
//            background: Color(hexadecimal: 0xFFFFFF),
//            border: Color(hexadecimal: 0xB9C0C2),
//            text: Color(hexadecimal: 0xB9C0C2)
//        )
//    }
//}
