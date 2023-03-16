//
//  CategoryPreviewRow.swift
//  MediaApp
//
//  Created by Dixit iOS on 14/03/23.
//  Copyright © 2023 VTPL. All rights reserved.
//

import SwiftUI
import SDWebImageSwiftUI

struct CategoryPreviewRow: View {
    
    let dataObj = GlobalData()
    
    var body: some View {
                
        ScrollView(.vertical, showsIndicators: true) {
            VStack() {
                ForEach(dataObj.categoryArray, id: \.self) { cat in
                    HStack() {
                        if cat.viewtype == .subscribeBanner {
                            SubscribeBanner()
                                .padding(8)
                                .padding(.bottom, 8)
                                .cornerRadius(4.0)
                        }else{
                            normalCategory(obj: cat)
                        }
                    }
                    
                }
            }
        }
                
    }
}

struct CategoryPreviewRow_Previews: PreviewProvider {
    static var previews: some View {
        CategoryPreviewRow()
    }
}


extension CategoryPreviewRow {
    
    @ViewBuilder func normalCategory(obj: Category) -> some View {
        
        VStack(){
            HStack() {
                Text(obj.name)
                    .font(.body)
                    .bold()
                    .foregroundColor(.white)
                Spacer()
                ViewAllView {
                    print("View All Called")
                }
            }
            .padding(.bottom, 8.0)
            .padding([.leading, .trailing], 8)
            
            ScrollView(.horizontal, showsIndicators: false) {
                
                HStack(){
                    ForEach(dataObj.imageURLS.shuffled(), id: \.self) { imgURL in
                        StandardImage(imageStr: imgURL).frame(width: obj.width, height: obj.height)
                    }
                }
                
            }
            .padding([.leading, .trailing], 8)
            .frame(height: obj.height)
            
        }
        .padding(.bottom, 24.0)
        
    }
    
}
