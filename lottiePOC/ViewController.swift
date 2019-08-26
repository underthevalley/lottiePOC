//
//  ViewController.swift
//  lottiePOC
//
//  Created by Natalia Sibaja on 2/4/19.
//  Copyright © 2019 Natalia Sibaja. All rights reserved.
//

import UIKit
import Lottie

class ViewController: UIViewController {
    private var fanAnimation: LOTAnimationView?
    private var layer = CAGradientLayer()

    override func viewDidLoad() {
        super.viewDidLoad()
        initialSetup()
        insertFanView()
    }
    private func initialSetup() {
        layer.frame = view.bounds
        layer.colors = [ColorPalette.blue.color, ColorPalette.cyan.color]
        layer.startPoint = CGPoint(x: 0, y: 0)
        layer.endPoint = CGPoint(x:1, y:1)
        view.layer.insertSublayer(layer, at: 0)
    }
    private func insertFanView() {
        fanAnimation = LOTAnimationView(name: "airflow")
        // Set view to full screen, aspectFill
        fanAnimation!.autoresizingMask = [.flexibleHeight, .flexibleWidth]
        fanAnimation!.contentMode = .scaleAspectFill
        fanAnimation!.frame = view.bounds
        // Add the Animation
        view.insertSubview(fanAnimation!, at: 1)
        fanAnimation!.loopAnimation = true
        fanAnimation!.play()
    }
    @IBAction func lowButton(_ sender: Any) {
        fanAnimation = LOTAnimationView(name: Animation.good.rawValue)
        layer.colors = [ColorPalette.blue.color, ColorPalette.cyan.color]
        
    }
    @IBAction func mediumButton(_ sender: Any) {
        fanAnimation = LOTAnimationView(name: Animation.medium.rawValue)
        layer.colors = [ColorPalette.yellow.color, ColorPalette.green.color]
    }
    @IBAction func highButton(_ sender: Any) {
        fanAnimation = LOTAnimationView(name: Animation.bad.rawValue)
        layer.colors = [ColorPalette.red.color, ColorPalette.purple.color]
    }
}

