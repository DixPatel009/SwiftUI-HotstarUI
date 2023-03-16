//
//  OnlyImageButton.swift
//  MediaApp
//
//  Created by Dixit iOS on 15/03/23.
//

import SwiftUI

struct OnlyImageButton: View {
    
    var action: () -> Void
    
    var body: some View {
                
        Button(action: action, label: {
            HStack {
                Image("plus")
                    .tint(.white)
            }
            .padding(16)
            .background(Color(uiColor: UIColor(rgb: 0x21334C)))
            .foregroundColor(.white)
            .cornerRadius(4.0)
        })
        
    }
    
}

struct OnlyImageButton_Previews: PreviewProvider {
    static var previews: some View {
        OnlyImageButton(action: {
            
        })
    }
}
