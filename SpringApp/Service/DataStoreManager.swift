//
//  DataStoreManager.swift
//  SpringApp
//
//  Created by Андрей Сорокин on 15.01.2025.
//

import Foundation

struct DataStoreManager {
    
    // MARK: - Private properties
    
    private let dataStore = DataStore.shared
    
    // MARK: - Properties
    
    var getAnimationParameters: AnimationDetails {
        fetchData()
    }
    
    // MARK: - Private methods
    
    private func fetchData() -> AnimationDetails {
        AnimationDetails(
            title: dataStore.animationsPresets.randomElement()?.rawValue ?? "",
            curve: dataStore.curves.randomElement()?.rawValue ?? "",
            force: Double.random(in: 1...1.5),
            duration: Double.random(in: 0.5...1.8),
            delay: 1.2
        )
    }
}
