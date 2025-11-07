//
//  FontConstants.swift
//  WingUI
//
//  Created by Apple on 07/11/25.
//

import Foundation
import SwiftUI
import UIKit

// MARK: - Font Family Names
enum AppFontFamily {
    static let MontserratRegular    = "Montserrat-Regular"
    static let MontserratMedium     = "Montserrat-Medium"
    static let MontserratSemiBold   = "Montserrat-SemiBold"
}

// MARK: - Font Sizes
enum AppFont: CGFloat, CaseIterable {
    case size7 = 7.0, size8 = 8.0, size8Half = 8.5, size9 = 9.0
    case size10 = 10.0, size11 = 11.0, size12 = 12.0, size13 = 13.0
    case size14 = 14.0, size15 = 15.0, size16 = 16.0, size17 = 17.0
    case size18 = 18.0, size19 = 19.0, size20 = 20.0, size21 = 21.0
    case size22 = 22.0, size23 = 23.0, size24 = 24.0, size26 = 26.0
    case size28 = 28.0, size30 = 30.0, size32 = 32.0, size34 = 34.0
    case size36 = 36.0, size38 = 38.0, size42 = 42.0
}

// MARK: - AppFont Helper
extension AppFont {
    
    private func scaledFontSize(for baseSize: CGFloat) -> CGFloat {
        let screenHeight = Screen.screenHeight
        return baseSize * (screenHeight / (Screen.hasNotch ? 890.0 : 700.0))
    }
    
    // MARK: Montserrat
    var montserratRegular: Font {
        font(name: AppFontFamily.MontserratRegular)
    }
    
    var montserratMedium: Font {
        font(name: AppFontFamily.MontserratMedium)
    }
    
    var montserratSemiBold: Font {
        font(name: AppFontFamily.MontserratSemiBold)
    }
    
    // MARK: Private Helper
    private func font(name: String) -> Font {
        let size = scaledFontSize(for: rawValue)
        guard let uiFont = UIFont(name: name, size: size) else {
            assertionFailure("❌ Font not found: \(name)")
            return .system(size: size)
        }
        return Font(uiFont)
    }
}
