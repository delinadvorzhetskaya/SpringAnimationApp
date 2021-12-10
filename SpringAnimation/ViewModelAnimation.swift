//
//  ViewModelAnimation.swift
//  SpringAnimation
//
//  Created by Дэлина Дворжецкая on 07.12.2021.
//

import Foundation
import UIKit
import Spring

class ViewModelAnimation {
    
    static var animations: [ModelAnimation] {
        putAnimations()
    }
    
    static let presets = ["shake",
                   "pop",
                   "morph",
                   "squeeze",
                   "wobble",
                   "swing",
                   "flipX",
                   "flipY",
                   "fall",
                   "squeezeLeft",
                   "squeezeRight",
                   "squeezeDown",
                   "squeezeUp",
                   "slideLeft",
                   "slideRight",
                   "slideDown",
                   "slideUp",
                   "fadeIn",
                   "fadeOut",
                   "fadeInLeft",
                   "fadeInRight",
                   "fadeInDown",
                   "fadeInUp",
                   "zoomIn",
                   "zoomOut",
                   "flash"]
    
    static let curves = ["spring",
                  "linear",
                  "easeIn",
                  "easeOut",
                  "easeInOut"]
    static func putAnimations() -> [ModelAnimation] {
        var animations: [ModelAnimation] = []
        for animation in presets {
            let force = { Double.random(in: 0...5) }
            let duration = { Double.random(in: 0...5) }
            let delay = { Double.random(in: 0...5) }
            let curve = { self.curves.randomElement()}
            animations.append(ModelAnimation(preset: animation, curve: curve() ?? "spring", force: force(), duration: duration(), delay: delay()))
        }
        
        return animations
    }
    
    static func randomAnimation() -> ModelAnimation {
        animations.randomElement() ?? animations[0]
    }
}
