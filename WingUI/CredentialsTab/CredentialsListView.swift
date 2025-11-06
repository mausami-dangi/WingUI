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
        
        VStack (alignment: .leading) {
            
            HStack {
                Image("ic_search")
                
                TextField("Search", text: $searchText)
                    .font(.custom("Montserrat-Regular", size: 14))
                    .foregroundColor(AppColor.appGrey)
            }.frame(height: 40)
                .background(Color.white)
                .overlay(RoundedRectangle(cornerRadius: 8).stroke(AppColor.lightGrey, lineWidth: 1.0))
                .padding(.bottom, 20)
                
            
            
            
            Text("30 Credentials Saved")
                .font(.custom("Montserrat-SemiBold", size: 14.0))
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
                    .font(.custom("Montserrat-Regular", size: 12))
                    .foregroundColor(AppColor.appGrey)
                +
                Text("tap here to learn more.")
                    .font(.custom("Montserrat-Medium", size: 12))
                    .foregroundColor(AppColor.appBlue)
            }.padding(.bottom)
        }.background(AppColor.bgGrey)
    }
}

#Preview {
    CredentialsListView()
}
