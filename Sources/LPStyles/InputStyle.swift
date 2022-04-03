//
//  InputStyle.swift
//  
//
//  Created by Juergen Loos on 3/4/2022.
//

import SwiftUI

@available(iOS 15.0.0, *)
public struct InputStyle: ViewModifier {
    
    var icon: String
    
    public func body(content: Content) -> some View {
        content
            .padding(15)
            .padding(.leading, 40)
            .background(.thinMaterial, in: RoundedRectangle(cornerRadius: 20, style: .continuous))
            .strokeStyle(cornerRadius: 20)
            .overlay(
                Image(systemName: icon)
                    .foregroundStyle(.secondary)
                    .frame(width: 36, height: 36)
                    .background(.thinMaterial, in: RoundedRectangle(cornerRadius: 14, style: .continuous))
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(8)
            )
    }
}

@available(iOS 15.0.0, *)
extension View {
    public func inputStyle(icon: String) -> some View{
        return modifier(InputStyle(icon: icon))
    }
}
