//
//  FloatingButton.swift
//  SwiftUITemplates
//
//  Created by Alfonso Patron on 30/01/26.
//

import SwiftUI

struct FloatingButton: View {
    
    let image: Image
    let backgroundColor: Color
    let imageColor: Color
    let type: FloatingTypeButton
    let size: ComponentSize
    let action: () -> Void
    
    
    init(image: Image, backgroundColor: Color, imageColor: Color, type: FloatingTypeButton, size: ComponentSize = .large, action: @escaping () -> Void) {
        self.image = image
        self.backgroundColor = backgroundColor
        self.imageColor = imageColor
        self.type = type
        self.size = size
        self.action = action
    }
    
    var body: some View {
        Button(action: action) {
            ZStack{
                Circle()
                    .foregroundStyle(Color.appWarning)
                    .frame(width: 50, height: 50, alignment: .center)
                image
                    .resizable()
                    .scaledToFit()
                    .foregroundStyle(imageColor)
                    .frame(width: size.imageSize, height: size.imageSize, alignment: .center)
            }
            
        }
    }
}

#Preview {
    FloatingButton(image: Image(systemName: "heart"), backgroundColor: Color.appError, imageColor: Color.white, type: .caption){
        print("heart button")
    }
}
