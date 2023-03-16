//
//  NewHomeVC.swift
//  MediaApp
//
//  Created by Dixit iOS on 14/03/23.
//  Copyright © 2023 VTPL. All rights reserved.
//

import SwiftUI

struct NewHomeVC: View {
    
    @Environment(\.presentationMode) var mode: Binding<PresentationMode>
    
    var body: some View {
        
        ZStack {
            Color.black.edgesIgnoringSafeArea(.all)
            
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 0) {

                    HomeHeaderView()
                    
                    TopBannerView().frame(width: GlobalData().screen.width, height: (GlobalData().screen.width + 100))
                        .padding(.top, -110)
                        .padding(.bottom, 24)
                        .zIndex(-1)
                                        
                    CategoryPreviewRow()
                    
                }
            }
            
        }

    }
    
}

struct NewHomeVC_Previews: PreviewProvider {
    
    static var previews: some View {
        NewHomeVC()
    }
    
}
