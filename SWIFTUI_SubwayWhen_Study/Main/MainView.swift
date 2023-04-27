//
//  MainView.swift
//  SWIFTUI_SubwayWhen_Study
//
//  Created by 이윤수 on 2023/04/25.
//

import SwiftUI

struct MainView: View {
    @StateObject var viewModel = MainViewModel()
    @State var seletedGroup = "출근"
    
    var body: some View {
        NavigationView{
            ScrollView(.vertical){
                LazyVStack{
                    HeaderView(headerData: self.viewModel.mainData.mainHeaderData)
                        .padding(EdgeInsets(top: 40, leading: 20, bottom: 0, trailing: 20))
                    GroupView(groupSelete: $seletedGroup)
                        .padding(EdgeInsets(top: 20, leading: 20, bottom: 0, trailing: 20))
                }
            }
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
