//
//  Animations.swift
//  
//
//  Created by Juergen Loos on 3/4/2022.
//

import SwiftUI

@available(iOS 13.0, *)
public extension Animation {
    static let openCard = Animation.spring(response: 0.5, dampingFraction: 0.7)
    static let closeCard = Animation.spring(response: 0.6, dampingFraction: 0.9)
}
