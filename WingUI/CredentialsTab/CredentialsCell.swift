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
                    .font(.custom("Montserrat-SemiBold", size: 14.0))
                    .foregroundColor(AppColor.appBlack)
                
                Spacer()
                
                Button {} label: {
                    Image("ic_dropDownGrey")
                }
            }
            
            HStack {
                Text("Username:")
                    .font(.custom("Montserrat-Regular", size: 14.0))
                    .foregroundColor(AppColor.appGrey)
                
                Text("exampleUserName")
                    .font(.custom("Montserrat-Regular", size: 14.0))
                    .foregroundColor(AppColor.appBlack)
                
                Spacer()
                
                Button {} label: {
                    Image("ic_copy")
                }
            }
            
            HStack {
                Text("Password:")
                    .font(.custom("Montserrat-Regular", size: 14.0))
                    .foregroundColor(AppColor.appGrey)
                
                Text("abcd@123")
                    .font(.custom("Montserrat-Regular", size: 14.0))
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
                    .font(.custom("Montserrat-Regular", size: 12.0))
                
                Spacer()
                
                Button(action: {
                    
                }) {
                    HStack {
                        Text("Private")
                            .font(.custom("Montserrat-Regular", size: 14.0))
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
