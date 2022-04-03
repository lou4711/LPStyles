//
//  AnimatableFontModifier.swift
//  
//
//  Created by Juergen Loos on 3/4/2022.
//

import SwiftUI

@available(iOS 13.0, *)
public struct AnimatableFontModifier: AnimatableModifier {
    var size: Double
    var weight: Font.Weight = .regular
    var design: Font.Design = .default
    
    public var animatableData: Double {
        get { size }
        set { size = newValue }
    }
    
    public func body(content: Content) -> some View {
        content
            .font(.system(size: size, weight: weight, design: design))
    }
}

@available(iOS 13.0, *)
public extension View {
    func animatableFont(size: Double, weight: Font.Weight = .regular, design: Font.Design = .default) -> some View {
        self.modifier(AnimatableFontModifier(size: size, weight: weight, design: design))
    }
}
