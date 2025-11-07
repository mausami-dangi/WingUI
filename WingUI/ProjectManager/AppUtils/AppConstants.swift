//
//  AppConstants.swift
//  WingUI
//
//  Created by Apple on 07/11/25.
//

import Foundation
import UIKit
import SwiftUI


//  MARK: - SCREEN
var sKeyWindow: UIWindow? {
    return (UIApplication.shared.connectedScenes.first as? UIWindowScene)?.windows.first
}

struct Screen {
    
    static var screenHeight: CGFloat {
        return sKeyWindow?.bounds.height ?? 0.0
    }
    
    static var screenWidth: CGFloat {
        return sKeyWindow?.bounds.width ?? 0.0
    }
    
    static var scale: CGFloat {
        return sKeyWindow?.screen.scale ?? 1.0
    }
    
    static var safeAreaTopInsets: CGFloat {
        return sKeyWindow?.safeAreaInsets.top ?? 0
    }
    
    static var safeAreaBottomInsets: CGFloat {
        return sKeyWindow?.safeAreaInsets.bottom ?? 0
    }
    
    static var hasNotch: Bool {
        return safeAreaBottomInsets > 20
    }
}
