//
//  CredentialsCell.swift
//  WingUI
//
//  Created by Apple on 06/11/25.
//

import SwiftUI

struct CredentialsCell: View {
    var body: some View {
        
        VStack {
        
            HStack {
                Text("https://blog.groovestreet.com")
                    .font(AppFont.size14.montserratSemiBold)
                    .foregroundColor(AppColor.appBlack)
                
                Spacer()
                
                Button {} label: {
                    Image("ic_dropDownGrey")
                }
            }
            
            HStack {
                Text("Username:")
                    .font(AppFont.size14.montserratRegular)
                    .foregroundColor(AppColor.appGrey)
                
                Text("exampleUserName")
                    
                    .font(AppFont.size14.montserratRegular)
                    .foregroundColor(AppColor.appBlack)
                
                Spacer()
                
                Button {} label: {
                    Image("ic_copy")
                }
            }
            
            HStack {
                Text("Password:")
                    .font(AppFont.size14.montserratRegular)
                    .foregroundColor(AppColor.appGrey)
                
                Text("abcd@123")
                    .font(AppFont.size14.montserratRegular)
                    .foregroundColor(AppColor.appBlack)
                 
                Spacer()
                
                Button {} label: {
                    Image("ic_openEye")
                }

                Button(action: {}) {
                    Image("ic_copy")
                }
            }
            
            HStack {
                Text("Aug 24th, 2024  •  10:48 pm")
                    .font(AppFont.size12.montserratRegular)
                
                Spacer()
                
                Button(action: {
                    
                }) {
                    HStack {
                        Text("Private")
                            .font(AppFont.size14.montserratRegular)
                            .foregroundColor(AppColor.appBlack)
                        Image("ic_down")
                    }
                }
            }
        }
    }
}

#Preview {
    CredentialsCell()
}
