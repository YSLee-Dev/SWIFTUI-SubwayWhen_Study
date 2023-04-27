//
//  GroupViewButton.swift
//  SWIFTUI_SubwayWhen_Study
//
//  Created by 이윤수 on 2023/04/26.
//

import SwiftUI

struct GroupViewButton: ViewModifier {
    let title : String
    let isSeleted : Bool
    
    func body(content: Content) -> some View {
        if self.isSeleted{
            Text(title)
                .padding(20)
                .fontWeight(.semibold)
                .font(.system(size: 17))
        }else{
            Text(title)
                .foregroundColor(.black)
                .padding(20)
                .fontWeight(.semibold)
                .font(.system(size: 17))
        }
    }
}

extension View{
    func groupViewButton(title : String, isSeleted : Bool) -> some View{
        self.modifier(GroupViewButton(title: title, isSeleted: isSeleted))
    }
}

struct GroupViewButton_Previews: PreviewProvider {
    static var previews: some View {
        Button {
            print("눌림")
        } label: {
            Text("123")
        }
        .groupViewButton(title: "123", isSeleted: false)

    }
}
