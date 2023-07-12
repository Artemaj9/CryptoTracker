//
//  DetailViewModel.swift
//  Crypto
//
//  Created by Artem on 13.07.2023.
//

import Foundation
import Combine


class DetailViewModel: ObservableObject {
    
    private let coinDetailService: CoinDetailDataService
    private var cancellables = Set<AnyCancellable>()
    
    init(coin: CoinModel) {
        self.coinDetailService = CoinDetailDataService(coin: coin)
        self.addSubscribers()
    }
                                                    
    private func addSubscribers() {
        
        coinDetailService.$coinDetails
            .sink{ (returnedCoinDetails) in
                print("RECIEVED COIN DETAIL DATA")
                print(returnedCoinDetails)
            }
            .store(in: &cancellables)
        
    }
}
