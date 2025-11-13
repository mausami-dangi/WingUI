//
//  LoginView.swift
//  WingUI
//
//  Created by Apple on 13/11/25.
//

import SwiftUI

struct LoginView: View {
    
    @State private var email = ""
    @State private var password = ""
    
    var body: some View {
    
        VStack {
            
            Spacer()
            
            Image("ic_logo")
                
            (
                Text("Login to ")
                    .font(AppFont.size22.montserratSemiBold)
                    .foregroundColor(AppColor.appBlack)
                +
                
                Text("Wing")
                    .font(AppFont.size22.montserratSemiBold)
                    .foregroundColor(AppColor.appBlue)
            ).padding(.bottom, 40)
            
            VStack {
                
                HStack {
                    Image("ic_mail")
                        .padding(.leading, 16)
                    
                    TextField("Email", text: $email)
                        .font(AppFont.size14.montserratRegular)
                        
                }
                
            }.frame(height: 44)
            .cornerRadius(10.0)
                .overlay(RoundedRectangle(cornerRadius: 8.0).stroke(lineWidth: 1.0).foregroundColor(AppColor.lightGrey))
                .padding(.bottom, 16)
                .padding(.horizontal, 20)
            
            VStack {
                
                HStack {
                    Image("ic_lock")
                        .padding(.leading, 16)
                    
                    TextField("Password", text: $password)
                        .font(AppFont.size14.montserratRegular)
                }
                
            }.frame(height: 44)
            .cornerRadius(10.0)
                .overlay(RoundedRectangle(cornerRadius: 8.0).stroke(lineWidth: 1.0).foregroundColor(AppColor.lightGrey))
                .padding(.bottom, 20)
                .padding(.horizontal, 20)
            
            HStack {
                Button {} label: {
                    HStack {
                        Image("ic_emptyCheckbox")
                        Text("Remember me")
                            .font(AppFont.size14.montserratRegular)
                            .foregroundColor(AppColor.appBlue)
                    }.frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.leading, 20)
                }
                
                Button { } label: {
                    Text("Forgot your password?")
                        .font(AppFont.size14.montserratRegular)
                        .foregroundColor(AppColor.appBlue)
                }.padding(.trailing, 20)

            }.padding(.bottom, 32)
            
            Button("Login") {}
                .frame(maxWidth: .infinity)
                .frame(height: 44)
                .font(AppFont.size14.montserratMedium)
                .foregroundColor(.white)
                .background(AppColor.appBlue)
                .cornerRadius(22)
                .padding(.horizontal, 20)
            
            
            Spacer()
            
            Text("By using Wing, you agree to our")
                .font(AppFont.size14.montserratRegular)
                .foregroundColor(AppColor.appGrey)
                .padding(.bottom, 2)
            
            
            HStack {
                Button(action: {}, label: {
                    Text("Terms of Service")
                        .font(AppFont.size14.montserratRegular)
                        .foregroundColor(AppColor.appBlue)
                })
                
                Text("and")
                    .font(AppFont.size14.montserratRegular)
                    .foregroundColor(AppColor.appGrey)
                
                
                Button(action: {}, label: {
                    Text("Privacy Policy")
                        .font(AppFont.size14.montserratRegular)
                        .foregroundColor(AppColor.appBlue)
                })
            }
            
        }
    }
}

#Preview {
    LoginView()
}
