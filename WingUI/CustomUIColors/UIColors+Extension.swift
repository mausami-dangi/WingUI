//
//  UIColors+Extension.swift
//  WingUI
//
//  Created by Apple on 03/11/25.
//

import Foundation
import SwiftUI

struct AppColor {
    static let appBlue = Color(hex: "#289EFD")
    static let appBlack = Color(hex: "#2D3649")
    static let appGrey = Color(hex: "#90A1B5")
    static let bgGrey = Color(hex: "#F7F8FA")
}


extension Color {
    init(hex: String) {
        let scanner = Scanner(string: hex)
        _ = scanner.scanString("#") // Skip leading #
        
        var rgb: UInt64 = 0
        scanner.scanHexInt64(&rgb)
        
        let r = Double((rgb >> 16) & 0xFF) / 255.0
        let g = Double((rgb >> 8) & 0xFF) / 255.0
        let b = Double(rgb & 0xFF) / 255.0
        
        self.init(red: r, green: g, blue: b)
    }
}
