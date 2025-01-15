//
//  DataStore.swift
//  SpringApp
//
//  Created by Андрей Сорокин on 15.01.2025.
//

import SpringAnimation

struct DataStore {
    
    // MARK: - Static properties
    static let shared = DataStore()
    
    // MARK: - Properties
    let animationsPresets: [AnimationPreset] = [
        .fadeIn,
        .fadeInDown,
        .fadeInLeft,
        .fadeInRight,
        .fadeInUp,
        .fadeOut,
        .fadeOutIn,
        .fall,
        .flash,
        .flipX,
        .flipY,
        .morph,
        .pop,
        .shake,
        .slideDown,
        .slideLeft,
        .slideRight,
        .slideUp,
        .squeeze,
        .squeezeDown,
        .squeezeLeft,
        .squeezeRight,
        .squeezeUp,
        .swing,
        .zoomIn,
        .wobble,
        .zoomOut
    ]
    
    let curves = AnimationCurve.allCases
    
    
    // MARK: - Private init
    private init () {}
    
}
