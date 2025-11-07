//
//  TaskListView.swift
//  WingUI
//
//  Created by Apple on 06/11/25.
//

import SwiftUI

struct TaskListView: View {
    
    var body: some View {
        
        VStack(alignment: .leading){
            Text("Welcome Back!")
                .font(AppFont.size14.montserratMedium)
                .foregroundColor(AppColor.appGrey)
            
            (
                Text("You’ve got ")
                    .font(AppFont.size20.montserratSemiBold)
                    .foregroundColor(AppColor.appBlack)
                +
                Text("6 Tasks ")
                    .font(AppFont.size20.montserratSemiBold)
                    .foregroundColor(AppColor.appBlue)
                +
                Text("To-do")
                    .font(AppFont.size20.montserratSemiBold)
                    .foregroundColor(AppColor.appBlack)
            )
            
            List {
                TaskCell()
                TaskCell()
                TaskCell()
                TaskCell()
                    
            }
            .listRowSpacing(20)
            .listRowSeparator(.hidden)
            .scrollContentBackground(.hidden) // ✅ hides the default grey system background
            .background(AppColor.bgGrey) // ✅ your own color (use any Color)
            
        }.background(AppColor.bgGrey)
    }
}

#Preview {
    TaskListView()
}
