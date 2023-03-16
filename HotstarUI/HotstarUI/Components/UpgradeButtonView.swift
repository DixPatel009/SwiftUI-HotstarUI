//
//  UpgradeButtonView.swift
//  MediaApp
//
//  Created by Dixit iOS on 15/03/23.
//

import SwiftUI

struct UpgradeButtonView: View {
    
    var text: String
    
    @State var isBorder: Bool = true
    @State var textColor: Color = DefualtColor().btnGoldColor
    @State var borderColor: Color = DefualtColor().btnGoldColor
    @State var borderWidth: CGFloat = 1
    @State var cornerRadius: CGFloat = 4
    var backgroundColor: Color = Color.clear
    
    var action: () -> Void
    
    var body: some View {
        
        if isBorder {
            defaultBtn.border(borderColor, width: borderWidth, cornerRadius: cornerRadius)
        }else{
            defaultBtn.cornerRadius(cornerRadius)
        }
        
    }
    
}

struct UpgradeButtonView_Previews: PreviewProvider {
    static var previews: some View {
        
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(.all)
            UpgradeButtonView(text: "UPGRADE", action: {
                
            })
        }
        
    }
}

extension UpgradeButtonView {
    
    var defaultBtn: some View {
        
        Button(action: {
            action()
        }, label: {
            VStack(spacing: 8) {
                Text(text)
                    .foregroundColor(textColor)
                    .font(.system(size: 12))
                    .bold()
                    .padding([.top, .bottom], 4)
            }
        })
        .padding([.leading, .trailing], 12)
        .background(backgroundColor)
        
    }
    
}
