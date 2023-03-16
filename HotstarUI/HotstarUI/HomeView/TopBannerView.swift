//
//  TopBannerView.swift
//  MediaApp
//
//  Created by Dixit iOS on 15/03/23.
//

import SwiftUI

struct TopBannerView: View {
    
    var body: some View {
        
        ZStack {
            StandardImage(roundCorner: 0.0,
                          imageStr: "https://img1.hotstarext.com/image/upload/f_auto,t_web_vl_3x/sources/r1/cms/prod/1529/571529-v")

            VStack {
                Spacer()
                HStack {
                    Spacer()
                }
            }
            .background(LinearGradient.blackBottomToTop)
            .padding(.bottom, 300)
            
            VStack {
                Spacer()
                HStack {
                    Spacer()
                    WatchNowButton(text: "Watch Now", imageName: "play.fill") {
                        //
                    }
                    .frame(width: 180, height: 50)
                    .padding(.bottom, 16)
                    
                    OnlyImageButton {
                        
                    }
                    .frame(width: 50, height: 50)
                    .padding(.bottom, 16)
                    
                    Spacer()
                }
            }
            .background(LinearGradient.blackTopToBottom)
            .padding(.top, 300)
            
        }
        .foregroundColor(.black)
        
        
    }
    
}

struct TopBannerView_Previews: PreviewProvider {
    static var previews: some View {
        TopBannerView()
    }
}
