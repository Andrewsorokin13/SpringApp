//
//  AnimationDetails.swift
//  SpringApp
//
//  Created by Андрей Сорокин on 15.01.2025.
//

import Foundation

struct AnimationDetails {
    let title: String
    let curve: String
    let force: Double
    let duration: Double
    let delay: Double
    
    var animationDescription: String {
        """
        Текущая анимация: \(title)
        
        Параметры анимации
        Curve: \(curve.roundedToTwoDecimalPlaces())
        Force: \(force.toStringWithTwoDecimalPlaces())
        Duration: \(duration.toStringWithTwoDecimalPlaces())
        Delay: \(delay.toStringWithTwoDecimalPlaces())
        """
    }
}
