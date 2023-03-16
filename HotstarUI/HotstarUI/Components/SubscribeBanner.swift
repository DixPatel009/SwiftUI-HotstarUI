//
//  SubscribeBanner.swift
//  HotstarUI
//
//  Created by Dixit iOS on 16/03/23.
//

import SwiftUI

struct SubscribeBanner: View {
    
    var body: some View {
        
        VStack(){
            
            StandardImage(roundCorner: 0.0,
                          imageStr: "https://www.cinefry.co.in/wp-content/uploads/2023/02/Vash.jpg")
            .frame(height: 150.0)
            
            HStack() {
                bannerDetail
                Spacer()
                playNowBtn
            }
            
        }
        .cornerRadius(8.0)
        .background(DefualtColor().btnBGColor)
        
    }
    
}

struct SubscribeBanner_Previews: PreviewProvider {
    static var previews: some View {
        SubscribeBanner()
    }
}

extension SubscribeBanner {
    
    var bannerDetail: some View {
        
        VStack(alignment: .leading, spacing: 4){
            Text("Vash")
                .font(.system(size: 14))
                .bold()
                .foregroundColor(.white)
            Text("Psychological, Thriller")
                .font(.system(size: 12))
                .foregroundColor(.white)
        }
        .padding([.leading, .bottom], 8)
        
    }
    
    var playNowBtn: some View {
        
        UpgradeButtonView(text: "Play Now",
                          isBorder: false,
                          textColor: .white,
                          backgroundColor: Color(uiColor: UIColor(rgb: 0x636266))) {
        }
        .padding(8.0)
        .padding(.bottom, 4)
        
    }
    
}
