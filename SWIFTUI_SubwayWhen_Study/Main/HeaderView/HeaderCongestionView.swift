//
//  HeaderCongestionView.swift
//  SWIFTUI_SubwayWhen_Study
//
//  Created by 이윤수 on 2023/04/25.
//

import SwiftUI

struct HeaderCongestionView: View {
    let congestionIcon : String
    
    var body: some View {
        VStack(alignment: .leading, spacing: 5){
            HStack{
                Text("현재 지하철 예상 혼잡도")
                    .fontWeight(.semibold)
                    .font(.system(size: 15))
                
                Spacer()
            }
            Text(self.congestionIcon)
                .font(.title2)
        }
        .padding(20)
        .background(.gray.opacity(0.1))
        .cornerRadius(15)
    }
}

struct HeaderCongestionView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderCongestionView(congestionIcon: "😵😵😵😵😵😵😵😵🫥🫥")
    }
}
