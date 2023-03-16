//
//  WatchNowButton.swift
//  MediaApp
//
//  Created by Dixit iOS on 15/03/23.
//

import SwiftUI

struct WatchNowButton: View {
    
    var text: String
    var imageName: String
    var action: () -> Void
    
    var body: some View {
        Button(action: action, label: {
            HStack {
                Spacer()
                Image(systemName: imageName)
                    .font(.headline)
                    .tint(.white)
                
                Text(text)
                    .font(.system(size: 16))
                    .bold()
                Spacer()
            }
            .padding([.top, .bottom], 12)
            .background(DefualtColor().btnBGColor)
            .foregroundColor(.white)
            .cornerRadius(4.0)
        })
    }
}

struct WatchNowButton_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(.all)
            WatchNowButton(text: "Watch Now", imageName: "play.fill") {
                print("Watch Now Clicked!!")
            }
        }
    }
}
