//
//  ChatTabView.swift
//  WingUI
//
//  Created by Apple on 31/10/25.
//

import SwiftUI

struct ChatTabItems: Identifiable {
    let id = UUID()
    let profileImageView : String
    let name : String
    let lastMessage : String
    let timeStamp : String
    let unreadMessageCount : Int
}
struct ChatTabView: View {
    
    private var groupItems = [
        ChatTabItems(profileImageView: "ic_groupProfile", name: "Simon", lastMessage: "Hello There.", timeStamp: "6h ago", unreadMessageCount: 1),
        
        ChatTabItems(profileImageView: "ic_groupProfile", name: "Derek", lastMessage: "Will be removed once your add ...", timeStamp: "6h ago", unreadMessageCount: 1),
        
        ChatTabItems(profileImageView: "ic_groupProfile", name: "Alex", lastMessage: "Will be removed once your add ...", timeStamp: "6h ago", unreadMessageCount: 1)
    ]
    
    private var assistantItems = [
        ChatTabItems(profileImageView: "ic_profile", name: "Team Leads", lastMessage: "Hello There.", timeStamp: "6h ago", unreadMessageCount: 1),
        
        ChatTabItems(profileImageView: "ic_profile", name: "IT & Support", lastMessage: "Will be removed once your add ...", timeStamp: "6h ago", unreadMessageCount: 1),
        
        ChatTabItems(profileImageView: "ic_profile", name: "Sales & Marketing Dept.", lastMessage: "Will be removed once your add ...", timeStamp: "6h ago", unreadMessageCount: 1)
    ]
    
    private var userItems = [
        ChatTabItems(profileImageView: "ic_profile", name: "Ramesh Ramgopal", lastMessage: "Hello There.", timeStamp: "6h ago", unreadMessageCount: 1),
        
        ChatTabItems(profileImageView: "ic_profile", name: "Sai Gupta", lastMessage: "Will be removed once your add ...", timeStamp: "6h ago", unreadMessageCount: 1),
        
        ChatTabItems(profileImageView: "ic_profile", name: "Pusparaj Mohnta", lastMessage: "Will be removed once your add ...", timeStamp: "6h ago", unreadMessageCount: 1)
    ]
    
    var body: some View {
        List {
            Section(header: Text("My Groups")
                .font(.custom("Montserrat-SemiBold", size: 14.0))
                .foregroundColor(AppColor.appGrey)
            ) {
                ForEach(groupItems) { item in
                    ChatCell(chatItems: item)
                        .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                        .listRowSeparator(.hidden)
                        .listRowBackground(Color.clear)
                }
            }
            
            Section(header: Text("My Assistants")
                .font(.custom("Montserrat-SemiBold", size: 14.0))
                .foregroundColor(AppColor.appGrey)
            ) {
                ForEach(assistantItems) { item in
                    ChatCell(chatItems: item)
                        .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                        .listRowSeparator(.hidden)
                        .listRowBackground(Color.clear)
                }
            }
            
            Section(header: Text("My Users")
                .font(.custom("Montserrat-SemiBold", size: 14.0))
                .foregroundColor(AppColor.appGrey)
            ) {
                ForEach(userItems) { item in
                    ChatCell(chatItems: item)
                        .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                        .listRowSeparator(.hidden)
                        .listRowBackground(Color.clear)
                }
            }
                    
        }.listStyle(.plain)
            .environment(\.defaultMinListRowHeight, 0)
            
    }
}

#Preview {
    ChatTabView()
}
