//
//  HeaderView.swift
//  SWIFTUI_SubwayWhen_Study
//
//  Created by 이윤수 on 2023/04/25.
//

import SwiftUI

struct HeaderView: View {
    let headerData : MainHeaderData
    
    var body: some View {
        VStack(alignment: .leading,spacing: 10){
            Text(self.headerData.mainTitle)
                .font(.system(size: 23))
                .fontWeight(.bold)
            
            HeaderCongestionView(congestionIcon: self.headerData.iconSet)
            
            HStack(alignment: .center, spacing: 10){
                Button(action: {
                    print("지하철 민원 눌림")
                }, label: {
                    HeaderQuickMenuView(title: "지하철 민원", iconName: "exclamationmark.triangle.fill")
                })
                .foregroundColor(.black)
                
                Button(action: {
                    print("편집 눌림")
                }, label: {
                    HeaderQuickMenuView(title: "편집", iconName: "list.bullet.indent")
                })
                .foregroundColor(.black)
            }
        }
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        let data = MainHeaderData(id: "1", congestion: 5, mainTitle: "화요일\n평범하지만 행복한 날로 만들어봐요!")
        HeaderView(headerData: data)
    }
}
