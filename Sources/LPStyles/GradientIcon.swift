//
//  GradientIcon.swift
//  
//
//  Created by Juergen Loos on 4/4/2022.
//

import SwiftUI

@available(iOS 13.0, *)
public struct GradientIcon: View {
    public var icon: String = "envelope.fill"
    public var gradient: Array<Color> = [Color(#colorLiteral(red: 0.5098039216, green: 0.2549019608, blue: 0.737254902, alpha: 1)), Color(#colorLiteral(red: 0.8823529412, green: 0.2823529412, blue: 0.5215686275, alpha: 1)), Color(#colorLiteral(red: 0.9843137255, green: 0.6470588235, blue: 0.5450980392, alpha: 1))]
    
    public var body: some View {
        ZStack {
            Image(systemName: icon)
                .frame(width: 36, height: 36)
                .background(LinearGradient(gradient: Gradient(colors: gradient), startPoint: .top, endPoint: .bottom))
                .cornerRadius(12)
                .foregroundColor(.white)
        }
    }
}

@available(iOS 13.0.0, *)
struct GradientIcon_Previews: PreviewProvider {
    static var previews: some View {
        GradientIcon()
    }
}
