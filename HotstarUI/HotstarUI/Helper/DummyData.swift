//
//  DummyData.swift
//  MediaApp
//
//  Created by Dixit iOS on 15/03/23.
//

import Foundation
import UIKit
import SwiftUI

class GlobalData: ObservableObject {
        
    @Published var categoryArray: [Category] = [Category(name: "Continue Watching", width: 150, height: 150, viewtype: .normalCatgory),
                                                Category(name: "Most Viewd", width: 150, height: 250, viewtype: .normalCatgory),
                                                Category(name: "Subscribe Banner", width: 150, height: 200, viewtype: .subscribeBanner),
                                                Category(name: "Popular Movies", width: 150, height: 150, viewtype: .normalCatgory),
                                                Category(name: "Popular Shows", width: 250, height: 150, viewtype: .normalCatgory)]
        
  @Published var imageURLS = ["https://img1.hotstarext.com/image/upload/f_auto,t_web_vl_3x/sources/r1/cms/prod/9310/1479310-v-644f76c4ffe5",
                              "https://img1.hotstarext.com/image/upload/f_auto,t_web_vl_1_5x/sources/r1/cms/prod/8739/1478739-v-4b473ba61414",
                              "https://img1.hotstarext.com/image/upload/f_auto,t_web_vl_3x/sources/r1/cms/prod/8478/1478478-v-3a45a2ae5b3e",
                              "https://img1.hotstarext.com/image/upload/f_auto,t_web_vl_3x/sources/r1/cms/prod/3224/1483224-v-dfb52de25006",
                              "https://img1.hotstarext.com/image/upload/f_auto,t_web_vl_3x/sources/r1/cms/prod/6675/1476675-v-582634b7d3fb",
                              "https://img1.hotstarext.com/image/upload/f_auto,t_web_vl_3x/sources/r1/cms/prod/7661/1487661-v-888d090bb393",
                              "https://img1.hotstarext.com/image/upload/f_auto,t_web_vl_3x/sources/r1/cms/prod/5786/1475786-v-d699181af646",
                              "https://static-koimoi.akamaized.net/wp-content/new-galleries/2023/02/the-night-manager-01.jpg"]
    
    @Published var screen = UIScreen.main.bounds
    
}

class DefualtColor: ObservableObject {

    @Published var btnBGColor = Color(uiColor: UIColor(rgb: 0x21334C))
    @Published var btnGoldColor = Color(uiColor: UIColor(rgb: 0xF0AE04))
    
}

struct Category: Hashable, Equatable {
    
    var name: String
    var width: CGFloat
    var height: CGFloat
    var viewtype: viewType
    
}

enum viewType {
    case normalCatgory
    case subscribeBanner
}
