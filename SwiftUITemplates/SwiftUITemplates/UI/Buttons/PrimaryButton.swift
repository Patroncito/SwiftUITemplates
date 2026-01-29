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
    let action: () -> Void
    
    init(_ title: String, size: ComponentSize = .medium, action: @escaping () -> Void) {
        self.title = title
        self.size = size
        self.action = action
    }
    
    var body: some View {
        Button(action: action) {
                Text(title)
                .font(size.font)
                .foregroundStyle(.white)
                .padding(.vertical, size.verticalPadding)
                .padding(.horizontal, size.horizontalPadding)
                .frame(maxWidth: .infinity)

        }
        .background(.cyan)
        .clipShape(Capsule())
    }
}

#Preview("PrimaryButton") {
    VStack(spacing: 16) {
        
        PrimaryButton("Continuar") {
            print("Mediano")
        }
        
        PrimaryButton("Pequeño", size: .small) {
            print("Pequeño") }
        
        PrimaryButton("Grande", size: .large) {
            print("grande") }
        
    }
    .padding()
}
