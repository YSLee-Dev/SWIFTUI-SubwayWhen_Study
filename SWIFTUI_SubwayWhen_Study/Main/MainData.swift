//
//  MainData.swift
//  SWIFTUI_SubwayWhen_Study
//
//  Created by 이윤수 on 2023/04/25.
//

import Foundation

struct MainData : Hashable, Identifiable{
    let id : String
    let mainHeaderData : MainHeaderData
    let mainArrivalData : [MainArrivalData]
}
