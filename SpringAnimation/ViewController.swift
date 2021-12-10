//
//  ViewController.swift
//  SpringAnimation
//
//  Created by Дэлина Дворжецкая on 06.12.2021.
//

import Spring

class ViewController: UIViewController {
    
    @IBOutlet weak var presetLabel: UILabel!
    @IBOutlet weak var curveLabel: UILabel!
    @IBOutlet weak var forseLabel: UILabel!
    @IBOutlet weak var durationLabel: UILabel!
    @IBOutlet weak var delayLabel: UILabel!
    

    @IBOutlet var propertiesView: SpringView!
    
    private var randomAnimation = ViewModelAnimation.randomAnimation()

    @IBAction func runAnimationButton(_ sender: SpringButton) {
        propertiesView.animation = randomAnimation.preset
        propertiesView.animate()
        
        presetLabel.text = "Preset: \(randomAnimation.preset)"
        curveLabel.text = "Curve: \(randomAnimation.curve)"
        forseLabel.text = String(format: "Forse: %.02f ", randomAnimation.force)
        durationLabel.text = String(format: "Duration: %.02f ", randomAnimation.duration)
        delayLabel.text = String(format: "Delay: %.02f ", randomAnimation.delay)
        
        randomAnimation = ViewModelAnimation.randomAnimation()
        sender.setTitle("Next animation: \(randomAnimation.preset)", for: .normal)
    }
}


