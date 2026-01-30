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
                    if let icon {
                        icon
                            .resizable()
                            .scaledToFit()
                            .frame(width: size.imageSize, height: size.imageSize)
                        Text(title)
                    }
                case .right:
                    if let icon {
                        Text(title)
                        icon
                            .resizable()
                            .scaledToFit()
                            .frame(width: size.imageSize, height: size.imageSize)
                    }
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

#Preview("PrimaryButton") {
    VStack(spacing: 16) {

        
        PrimaryButton("Continuar", buttonColor: Color.appButton, icon: Image(systemName: "arrow.right")) {
            print("Mediano")
        }
        
        PrimaryButton("Pequeño", size: .large, icon: Image(systemName: "apple.logo"), iconPosition: .right) {
            print("Pequeño")
        }
        
        PrimaryButton("Grande", size: .large) {
            print("grande") }
        
        
        PrimaryButton(
            "Grande",
            size: .small,
            icon: Image(systemName: "heart.fill"),
            isDisable: true,
            action: {
                print("Prueba")
            }
        )
    }
    .padding()
}
