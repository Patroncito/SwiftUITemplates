//
//  AppColors.swift
//  SwiftUITemplates
//
//  Created by Alfonso Patron on 29/01/26.
//

import Foundation
import SwiftUI

extension Color {
    
    // Brand / Accent
       static let appPrimary = Color(hex: 0x00B7DD)
       static let appSecondary = Color(hex: 0x7C3AED)
       static let appAccent = Color(hex: 0x22C55E)
       static let appButton = Color(hex: 0x38DB59)

       // Backgrounds
       static let appBackground = Color(hex: 0x0B1220)
       static let appSurface = Color(hex: 0x111A2E)

       // Text
       static let appTextPrimary = Color.white
       static let appTextSecondary = Color.white.opacity(0.7)

       // Feedback
       static let appSuccess = Color(hex: 0x22C55E)
       static let appWarning = Color(hex: 0xF59E0B)
       static let appError   = Color(hex: 0xEF4444)

       // Components
       static let buttonPrimaryBackground = appPrimary
       static let buttonPrimaryText = Color.white

       static let buttonSecondaryBackground = Color.white.opacity(0.12)
       static let buttonSecondaryText = Color.white}

extension Color {
    init(hex: UInt32, alpha: Double = 1.0) {
        let r = Double((hex & 0xFF0000) >> 16) / 255.0
        let g = Double((hex & 0x00FF00) >> 8) / 255.0
        let b = Double(hex & 0x0000FF) / 255.0
        self.init(.sRGB, red: r, green: g, blue: b, opacity: alpha)
    }
}
