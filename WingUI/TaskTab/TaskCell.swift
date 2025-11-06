//
//  TaskCell.swift
//  WingUI
//
//  Created by Apple on 06/11/25.
//

import SwiftUI

struct TaskCell: View {
    var body: some View {
        VStack (alignment: .leading) {
            
            HStack {
                Image("ic_taskTab")
                Text("W-7255")
                    .font(.custom("Montserrat-SemiBold", size: 14.0))
                    .foregroundColor(AppColor.appBlue)
                
                Spacer()
                
                Button {} label: {
                    Image("ic_assignee")
                }

                Button {} label: {
                    Image("ic_dropDownGrey")
                }
            }
            
            Divider()
            
            Text("Update CRM")
                .font(.custom("Montserrat-SemiBold", size: 15.0))
                .foregroundColor(AppColor.appBlack)
            
            Text("Onboard new customer onto \nMonday.com...")
                .font(.custom("Montserrat-Regular", size: 14.0))
                .foregroundColor(AppColor.appGrey)
            
            
            HStack {
                Image("ic_calender")
            
                Text("Jan, 24, 2021 12:30 AM")
                    .font(.custom("Montserrat-Regular", size: 13.0))
                    .foregroundColor(AppColor.appGrey)
                
                Spacer()
                
                Image("ic_reverse")
                Image("ic_flag")
                Image("ic_report")
            }
        }
    }
}

#Preview {
    TaskCell()
}
