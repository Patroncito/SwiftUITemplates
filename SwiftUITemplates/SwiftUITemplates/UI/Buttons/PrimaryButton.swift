//
//  PrimaryButton.swift
//  SwiftUITemplates
//
//  Created by Alfonso Patron on 29/01/26.
//

import SwiftUI

struct PrimaryButton: View {
    
    let title: String
    let size: ComponentSize
    let buttonColor : Color
    let icon: Image?
    let isDisable: Bool
    let iconPosition : IconPosition
    let action: () -> Void
    
    init(_ title: String, size: ComponentSize = .medium, buttonColor: Color = .red, icon: Image? = nil, isDisable: Bool = false, iconPosition: IconPosition = .left, action: @escaping () -> Void) {
        self.title = title
        self.size = size
        self.buttonColor = buttonColor
        self.icon = icon
        self.isDisable = isDisable
        self.iconPosition = iconPosition
        self.action = action
    }
    
    var body: some View {
        Button(action: action) {
            HStack{
                switch iconPosition {
                case .left:
                    Text(title)
                    if let icon {
                        icon
                            .resizable()
                            .scaledToFit()
                            .frame(width: size.imageSize, height: size.imageSize)
                    }
                case .right:
                    if let icon {
                        icon
                            .resizable()
                            .scaledToFit()
                            .frame(width: size.imageSize, height: size.imageSize)
                    }
                    Text(title)
                }
                
 
            }
                .font(size.font)
                .foregroundStyle(.white)
                .padding(.vertical, size.verticalPadding)
                .padding(.horizontal, size.horizontalPadding)
                .frame(maxWidth: .infinity)

        }
        .disabled(isDisable)
        .background(!isDisable ? buttonColor : Color.gray.opacity(0.3))
        .clipShape(Capsule())
    }
}

#Preview("PrimaryButton · States") {
    VStack(spacing: 16) {

        PrimaryButton("Continuar") { }

        PrimaryButton(
            "Continuar",
            buttonColor: .appButton,
            icon: Image(systemName: "arrow.right")
        ) { }

        PrimaryButton(
            "Deshabilitado",
            icon: Image(systemName: "lock.fill"),
            isDisable: true
        ) { }

    }
    .padding()
}

#Preview("PrimaryButton · Sizes") {
    VStack(spacing: 16) {

        PrimaryButton("Small", size: .small) { }

        PrimaryButton("Medium", size: .medium) { }

        PrimaryButton("Large", size: .large) { }

    }
    .padding()
}

#Preview("PrimaryButton · Icon Position") {
    VStack(spacing: 16) {

        PrimaryButton(
            "Left Icon",
            icon: Image(systemName: "arrow.left"),
            iconPosition: .left
        ) { }

        PrimaryButton(
            "Right Icon",
            icon: Image(systemName: "arrow.right"),
            iconPosition: .right
        ) { }

    }
    .padding()
}
