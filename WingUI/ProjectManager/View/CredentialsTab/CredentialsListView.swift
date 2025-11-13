//
//  CredentialsListView.swift
//  WingUI
//
//  Created by Apple on 06/11/25.
//

import SwiftUI

struct CredentialsListView: View {
    
    @State private var searchText = "Search Credentials"
    
    var body: some View {
        
        NavigationStack {
            
            VStack (alignment: .leading) {
                
                HStack {
                    Image("ic_search")
                    
                    TextField("Search", text: $searchText)
                        .font(AppFont.size14.montserratRegular)
                        .foregroundColor(AppColor.appGrey)
                }.frame(height: 40)
                    .background(Color.white)
                    .overlay(RoundedRectangle(cornerRadius: 8).stroke(AppColor.lightGrey, lineWidth: 1.0))
                    .padding(.bottom, 20)
                    
                
                
                
                Text("30 Credentials Saved")
                    .font(AppFont.size14.montserratSemiBold)
                    .foregroundColor(AppColor.appGrey)
                    
                
                List {
                    CredentialsCell()
                    CredentialsCell()
                    CredentialsCell()
                    
                }.listRowSpacing(12)
                .scrollContentBackground(.hidden)
                .background(AppColor.bgGrey)
                
                
                HStack {
                    Text("Wing's Credentials product uses bank level security to keep your credentials secure, ")
                        .font(AppFont.size12.montserratRegular)
                        .foregroundColor(AppColor.appGrey)
                    +
                    Text("tap here to learn more.")
                        .font(AppFont.size12.montserratMedium)
                        .foregroundColor(AppColor.appBlue)
                }.padding(.bottom)
            }.background(AppColor.bgGrey)

        }.navigationTitle("Credentials")
    }
}

#Preview {
    CredentialsListView()
}
