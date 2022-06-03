//
//  CustomFont.swift
//  Rive Animations
//
//  Created by TheGIZzz on 3/6/2565 BE.
//

import SwiftUI

struct CustomFont: ViewModifier {
    var textStyle: TextStyle
    
    var name: String {
        switch textStyle {
        case .title:
            return "Poppins Bold"
        case .body:
            return "Inter Regular"
        }
    }
    
    var size: CGFloat {
        switch textStyle {
        case .title:
            return 28
        case .body:
            return 17
        }
    }

    var relative: Font.TextStyle {
        switch textStyle {
        case .title:
            return .title
        case .body:
            return .body
        }
    }
    
    
    func body(content: Content) -> some View {
        content.font(.custom(name, size: size, relativeTo: relative))
    }
}

extension View {
    func customFont(textStyle: TextStyle) -> some View {
        modifier(CustomFont(textStyle: textStyle))
    }
}

enum TextStyle {
    case title
    case body
}
