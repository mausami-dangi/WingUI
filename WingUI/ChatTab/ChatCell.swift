//
//  ChatCell.swift
//  WingUI
//
//  Created by Apple on 31/10/25.
//

import SwiftUI

struct ChatCell: View {
    
    let chatItems : ChatTabItems
    
    var body: some View {
        VStack (spacing: 0) {
            
            HStack (spacing: 15){
                Image(chatItems.profileImageView)
                    
                VStack (alignment: .leading){
                    Text(chatItems.name)
                        .foregroundColor(AppColor.appBlack)
                        .font(.custom("Montserrat-Medium", size: 15.0))
                    Text(chatItems.lastMessage)
                        .foregroundColor(AppColor.appGrey)
                        .font(.custom("Montserrat-Regular", size: 13.0))
                    
                }
                
                Spacer()
                
                HStack() {
                    VStack (spacing: 1) {
                        Text("6h ago")
                            .foregroundColor(AppColor.appGrey)
                            .font(.custom("Montserrat-Regular", size: 13.0))
                        Text("1")
                            .font(.caption)
                            .padding(6)
                            .background(AppColor.appBlue)
                            .foregroundColor(.white)
                            .clipShape(Circle())
                    }
                    
                }
            }
            .frame(height: 60)
            .background(Color.white)
            
            Divider()
        }
        
            
    }
}

#Preview {
    ChatCell(chatItems: ChatTabItems(profileImageView: "", name: "Simon", lastMessage: "Hello There.", timeStamp: "6h ago", unreadMessageCount: 1))
}
