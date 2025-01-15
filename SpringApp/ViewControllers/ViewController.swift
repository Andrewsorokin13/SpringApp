//
//  ViewController.swift
//  SpringApp
//
//  Created by Андрей Сорокин on 15.01.2025.
//

import UIKit
import SpringAnimation

final class ViewController: UIViewController {
    
    // MARK: - IB Outlets
    
    @IBOutlet weak var animatedView: SpringView!
    @IBOutlet weak var descriptionAnimationLabel: SpringLabel!
    
    // MARK: - Private properties
    
    private var animationParameters = DataStoreManager().getAnimationParameters
    
    // MARK: - IB Actions
    
    @IBAction private func startAnimation(sender: UIButton) {
        descriptionAnimationLabel.animation = animationParameters.title
        descriptionAnimationLabel.delay = animationParameters.delay
        descriptionAnimationLabel.animate()
        
        descriptionAnimationLabel.text = animationParameters.animationDescription
        
        descriptionAnimationLabel.animateNext { [unowned self] in
            animatedView.animation = animationParameters.title
            animatedView.curve = animationParameters.curve
            animatedView.force = animationParameters.force
            animatedView.delay = animationParameters.delay
            animatedView.animate()
            
            animationParameters = DataStoreManager().getAnimationParameters
            
            sender.setTitle("Go \(animationParameters.title)", for: .normal)
        }
    }
}
