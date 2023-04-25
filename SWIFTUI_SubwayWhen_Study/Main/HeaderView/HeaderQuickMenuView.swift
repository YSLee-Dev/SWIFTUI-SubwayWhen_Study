//
//  HeaderQuickMenuView.swift
//  SWIFTUI_SubwayWhen_Study
//
//  Created by 이윤수 on 2023/04/25.
//

import SwiftUI

struct HeaderQuickMenuView: View {
    let title : String
    let iconName : String
    
    var body: some View {
        VStack(alignment: .trailing){
            HStack{
                Text(self.title)
                    .font(.system(size: 17))
                    .fontWeight(.semibold)
                Spacer()
            }
            Image(systemName: self.iconName)
                .resizable()
                .frame(width: 30, height: 30, alignment: .trailing)
                .foregroundColor(.yellow)
           
        }
        .padding(15)
        .background(.gray.opacity(0.1))
        .cornerRadius(15)
    }
}

struct HeaderQuickMenuView_Previews: PreviewProvider {
    static var previews: some View {
       HeaderQuickMenuView(title: "지하철 민원", iconName: "exclamationmark.triangle.fill")
    }
}
