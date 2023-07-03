//
//  UIApplication.swift
//  Crypto
//
//  Created by Artem on 03.07.2023.
//

import Foundation
import SwiftUI

extension UIApplication {
    
    func endEditing() {
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
