//
//  MainHeaderData.swift
//  SWIFTUI_SubwayWhen_Study
//
//  Created by 이윤수 on 2023/04/25.
//

import Foundation

struct MainHeaderData : Identifiable, Hashable{
    let id : String
    let congestion : Int
    let mainTitle : String
    
    var iconSet : String{
        var result = ""
        
        if self.congestion == 0{
            for _ in 1...10{
                result.append("🫥")
            }
        }else{
            for _ in 1...self.congestion{
                result.append("😵")
            }
            if self.congestion != 10{
                for _ in result.count...9{
                    result.append("🫥")
                }
            }
        }
        return result
    }
}
