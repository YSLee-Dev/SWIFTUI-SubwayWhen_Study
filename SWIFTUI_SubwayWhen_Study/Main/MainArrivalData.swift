//
//  MainArrivalData.swift
//  SWIFTUI_SubwayWhen_Study
//
//  Created by 이윤수 on 2023/04/25.
//

import Foundation

struct MainArrivalData : Identifiable, Hashable{
    let id : String
    let stationName : String
    let now : String
    let line : String
    let time : String
    let destination : String
}
