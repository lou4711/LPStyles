//
//  StrokeStyle.swift
//  
//
//  Created by Juergen Loos on 3/4/2022.
//

import SwiftUI

@available(iOS 15.0.0, *)
public struct     StrokeStyle: ViewModifier {
    
    var cornerRadius: CGFloat
    @Environment(\.colorScheme) var colorScheme
    
    public func body(content: Content) -> some View {
        content
            .overlay(
                RoundedRectangle(cornerRadius: cornerRadius, style: .continuous)
                    .stroke(
                        .linearGradient(
                            colors: [
                                .white.opacity(colorScheme == .light ? 0.3 : 0.6),
                                .black.opacity(colorScheme == .light ? 0.1 : 0.3)
                            ], startPoint: .top, endPoint: .bottom
                        )
                    )
                    .blendMode(.overlay)
            )
    }
}

@available(iOS 15.0.0, *)
extension View {
    public func strokeStyle(cornerRadius: CGFloat = 30) -> some View {
        return modifier(StrokeStyle(cornerRadius: cornerRadius))
    }
}
