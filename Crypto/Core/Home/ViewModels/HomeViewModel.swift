//
//  HomeViewModel.swift
//  Crypto
//
//  Created by Artem on 02.07.2023.
//

import Foundation
import Combine

class HomeViewModel: ObservableObject {
        
    @Published var allCoins: [CoinModel] = []
    @Published var portfolioCoins: [CoinModel] = []
    @Published var searchText = ""
    
    private let dataService = CoinDataService()
    private var cancellables = Set<AnyCancellable>()
    
    init() {
       addSubscribers()
            
        }
    
    func addSubscribers() {
        
        dataService.$allCoins
            .sink { [weak self] (returnedCoins) in
                self?.allCoins = returnedCoins
            }
            .store(in: &cancellables)
    }
    
}
