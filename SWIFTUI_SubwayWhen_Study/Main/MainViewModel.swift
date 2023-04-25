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
    @Published var mainData : [MainData] = []
    
    init(){
        self.model.loadData()
            .sink{[weak self] data in
                self?.mainData.append(contentsOf: data)
            }
            .store(in: &self.bag)
    }
}
