//
//  ArrivalView.swift
//  SWIFTUI_SubwayWhen_Study
//
//  Created by 이윤수 on 2023/04/28.
//

import SwiftUI

struct ArrivalView: View {
    let data : MainArrivalData
    
    var body: some View {
        VStack(alignment: .trailing){
            HStack{
                Circle()
                    .fill(Color(uiColor: UIColor(named: self.data.line) ?? .blue))
                    .frame(
                        width: 65,
                        height: 65
                    )
                    .overlay{
                        Text(self.data.line)
                            .font(.system(size: 15))
                            .fontWeight(.semibold)
                            .foregroundColor(.white)
                    }
                VStack(alignment: .leading, spacing: 5){
                    Text("\(self.data.stationName) | \(self.data.destination)")
                        .font(.system(size: 15))
                    
                    Text(self.data.now)
                        .font(.system(size: 17))
                        .fontWeight(.semibold)
                }
                .padding(EdgeInsets(top: 0, leading: 10, bottom: 0, trailing: 0))
                Spacer()
            }
            .padding(EdgeInsets(top: 15, leading: 15, bottom: 0, trailing: 15))
            
            ZStack(alignment: .trailing){
                Rectangle()
                    .fill(Color(uiColor: UIColor(named: self.data.line) ?? .blue))
                    .frame(height: 1)
                    .padding(EdgeInsets(top: 0, leading: 15, bottom: 15, trailing: 15))
                
                Button {
                    print("시간표 눌림")
                } label: {
                    Capsule()
                        .fill(Color(uiColor: UIColor(named: self.data.line) ?? .blue))
                        .frame(
                            width: 80,
                            height: 30
                        )
                        .overlay{
                            Image(systemName: "timer")
                                .foregroundColor(.white)
                        }
                }
                .padding(EdgeInsets(top: 0, leading: 0, bottom: 15, trailing: 15))
                
            }
            
            Text(self.data.time)
                .font(.system(size: 17))
                .fontWeight(.semibold)
                .padding(EdgeInsets(top: 0, leading: 0, bottom: 15, trailing: 15))
        }
        .background(.gray.opacity(0.1))
        .cornerRadius(15)
    }
}

struct ArrivalView_Previews: PreviewProvider {
    static var previews: some View {
        ArrivalView(data:
                        MainArrivalData(
                            id: "songpa",
                            stationName: "송파역",
                            now: "복정출발",
                            line: "8호선",
                            time: "5분",
                            destination: "암사행"
                        )
        )
    }
}
