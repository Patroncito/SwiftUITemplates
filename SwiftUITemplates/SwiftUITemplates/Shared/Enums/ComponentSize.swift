//
//  ComponentSize.swift
//  SwiftUITemplates
//
//  Created by Alfonso Patron on 29/01/26.
//

import Foundation
import SwiftUI

enum ComponentSize {
    case small
    case medium
    case large
}


extension ComponentSize {
    
    var verticalPadding: CGFloat {
        switch self {
        case .small: 8
        case .medium: 12
        case .large: 16
        }
    }
    
    var horizontalPadding: CGFloat {
        switch self {
        case .small: 12
        case .medium: 16
        case .large: 20
        }
    }
    
    var font: Font {
        switch self {
        case .small: .subheadline
        case .medium: .headline
        case .large : .title3
        }
    }
    
    var cornerRadius: CGFloat {
        switch self {
        case .small: 10
        case .medium: 14
        case .large : 20
        }
    }
    
    var imageSize : CGFloat {
        switch self {
        case .small: 20
        case .medium: 24
        case .large : 28
        }
    }
}
