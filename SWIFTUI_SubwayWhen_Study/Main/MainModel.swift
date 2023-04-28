//
//  MainModel.swift
//  SWIFTUI_SubwayWhen_Study
//
//  Created by 이윤수 on 2023/04/25.
//

import Foundation
import Combine

class MainModel{
    func loadData() -> AnyPublisher<MainData, Never>{
        Just(
            MainData(id: "1",
                     mainHeaderData:
                        MainHeaderData(
                            id: "mainHeaderData",
                            congestion: 5,
                            mainTitle: "금요일,\n행복한 하루 보내세요!"
                        ),
                     mainArrivalData: [
                        MainArrivalData(
                            id: "songpa",
                            stationName: "송파역",
                            now: "복정출발",
                            line: "8호선",
                            time: "5분",
                            destination: "암사행"
                        ),
                        MainArrivalData(
                            id: "Yangjae",
                            stationName: "양재역",
                            now: "남부터미널출발",
                            line: "3호선",
                            time: "1분",
                            destination: "오금행"
                        ),
                        MainArrivalData(
                            id: "Gwanggyo",
                            stationName: "광교역",
                            now: "대기중",
                            line: "신분당선",
                            time: "2분",
                            destination: "신사행"
                        )
                     ]
                    )
            
        )
        .eraseToAnyPublisher()
    }
}
