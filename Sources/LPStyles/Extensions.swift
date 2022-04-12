//
//  Extensions.swift
//  
//
//  Created by Juergen Loos on 5/4/2022.
//

import SwiftUI

@available(iOS 13.0, *)
extension View {
    func hideKeyboard() {
        let resign = #selector(UIResponder.resignFirstResponder)
        UIApplication.shared.sendAction(resign, to: nil, from: nil, for: nil)
    }
    
    @ViewBuilder func `if`<Content: View>(_ condition: Bool, transform: (Self) -> Content) -> some View {
            if condition {
                transform(self)
            } else {
                self
            }
        }
}
