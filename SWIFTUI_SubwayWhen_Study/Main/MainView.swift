//
//  MainView.swift
//  SWIFTUI_SubwayWhen_Study
//
//  Created by 이윤수 on 2023/04/25.
//

import SwiftUI

struct MainView: View {
    @StateObject var viewModel = MainViewModel()
    
    var body: some View {
        NavigationView{
            ScrollView(.vertical){
                LazyVStack{
                    HeaderView(headerData: self.viewModel.mainData.mainHeaderData)
                        .padding(EdgeInsets(top: 25, leading: 0, bottom: 0, trailing: 0))
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
