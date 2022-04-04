//
//  GradientButton.swift
//  
//
//  Created by Juergen Loos on 4/4/2022.
//

import SwiftUI

@available(iOS 13.0, *)
struct GradientButton: View {
    var text: String = "Text here"
    var gradient: Array<Color> = [Color(#colorLiteral(red: 0.7294117647, green: 0.4588235294, blue: 1, alpha: 1)), Color(#colorLiteral(red: 0.2235294118, green: 0.07450980392, blue: 0.7215686275, alpha: 1))]
    
    var body: some View {
        VStack {
            VStack {
                Text(text)
                    .font(.headline)
            }
            .frame(maxWidth: .infinity, maxHeight: 50, alignment: .center)
            .background(LinearGradient(gradient: Gradient(colors: gradient), startPoint: .leading, endPoint: .trailing))
            .cornerRadius(16)
            .foregroundColor(.white)
            
        }
    }
}

@available(iOS 13.0.0, *)
struct GradientButton_Previews: PreviewProvider {
    static var previews: some View {
        GradientButton()
    }
}
