//
//  StandardImage.swift
//  MediaApp
//
//  Created by Dixit iOS on 15/03/23.
//  Copyright © 2023 VTPL. All rights reserved.
//

import SwiftUI
import SDWebImageSwiftUI

struct StandardImage: View {
    
    var roundCorner: CGFloat = 4.0
    var imageStr: String
    
    var body: some View {
        
        GeometryReader { proxy in
            WebImage(url: URL(string: imageStr))
                .resizable()
                .placeholder {
                    Rectangle().foregroundColor(.gray)
                }
                .indicator(.activity)
                .scaledToFill()
                .frame(width: proxy.size.width, height: proxy.size.height)
                .cornerRadius(roundCorner)
                
        }
        
    }
    
}

struct StandardImage_Previews: PreviewProvider {
    static var previews: some View {
        StandardImage(imageStr: "")
    }
}
