//
//  HomeHeaderView.swift
//  MediaApp
//
//  Created by Dixit iOS on 15/03/23.
//

import SwiftUI

struct HomeHeaderView: View {
    var body: some View {
        
        HStack {
//            
//            OnlyImageButton {
//                
//            }
//            .padding(.leading, 16)
//            
            Spacer()
            
            UpgradeButtonView(text: "UPGRADE") {
                print("UPGRADE Clicked!!")
            }.padding(.trailing, 16)
            
        }
        
    }
}

struct HomeHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HomeHeaderView()
    }
}
