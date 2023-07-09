//
//  XMarkButton.swift
//  Crypto
//
//  Created by Artem on 09.07.2023.
//

import SwiftUI

struct XMarkButton: View {
    
    @Environment(\.dismiss) var dismissScreen
    
    var body: some View {
        
        Button(action: {
       dismissScreen()
    }, label: {
        Image(systemName: "xmark")
            .font(.headline)
    })
    }
}

struct XMarkButton_Previews: PreviewProvider {
    static var previews: some View {
        XMarkButton()
    }
}
