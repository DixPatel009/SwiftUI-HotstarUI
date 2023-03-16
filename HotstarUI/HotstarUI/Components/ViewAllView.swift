//
//  ViewAllView.swift
//  Brandspot365
//
//  Created by Dixit iOS on 15/03/23.
//  Copyright © 2023 VTPL. All rights reserved.
//

import SwiftUI

struct ViewAllView: View {
    
    let viewallHandler: (() -> Void)
    
    var body: some View {
        
        VStack{
            HStack {
                Spacer()
                Text("View all")
                    .font(.system(size: 12))
                    .foregroundColor(.white)
                Image("ic_next")
                               .resizable()
                               .aspectRatio(contentMode: .fit)
                               .frame(width: 16)
            }
        }.onTapGesture {
            self.viewallHandler()
        }
        
    }
    
}

struct ViewAllView_Previews: PreviewProvider {
    static var previews: some View {
        ViewAllView(viewallHandler: {
            
        })
    }
}
