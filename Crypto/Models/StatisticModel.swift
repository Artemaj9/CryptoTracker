//
//  StatisticModel.swift
//  Crypto
//
//  Created by Artem on 09.07.2023.
//

import Foundation


struct StatisticModel: Identifiable {
    
    let id = UUID().uuidString
    let title: String
    let value: String
    let percentageChange: Double?
    
    init(title: String, value: String, percentChange: Double? = nil) {
        self.title = title
        self.value = value
        self.percentageChange = percentChange
    }
}

