//
//  ContentView.swift
//  WingUI
//
//  Created by Apple on 30/10/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            Text("Chat")
                .tabItem {
                    Image("ic_chatTab")
                    Text("Chat")
                }
            
            Text("Task")
                .tabItem {
                    Image("ic_taskTab")
                    Text("Task")
                }
            
            Text("Uploads")
                .tabItem {
                    Image("ic_uploadsTab")
                    Text("Uploads")
                }
            
            Text("Credentials")
                .tabItem {
                    Image("ic_credentialTab")
                    Text("Credentials")
                }
            
            Text("More")
                .tabItem {
                    Image("ic_moreTab")
                    Text("More")
                }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
