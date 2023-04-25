//
//  MainViewModel.swift
//  SWIFTUI_SubwayWhen_Study
//
//  Created by 이윤수 on 2023/04/25.
//

import Foundation
import Combine

class MainViewModel : ObservableObject{
    
    private var bag = Set<AnyCancellable>()
    
    private let model = MainModel()
    @Published var mainData : MainData = MainData(id: "0", mainHeaderData: MainHeaderData(id: "0", congestion: 0, mainTitle: ""), mainArrivalData: [])
    
    init(){
        self.model.loadData()
            .sink{[weak self] data in
                self?.mainData = data
            }
            .store(in: &self.bag)
    }
}
