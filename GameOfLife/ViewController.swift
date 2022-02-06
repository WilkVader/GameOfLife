//
//  ViewController.swift
//  GameOfLife
//
//  Created by Piotr Wilk on 06/02/2022.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet private var worldView: WorldView!
    private var timer: Timer?

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .purple
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        setupTimer()
    }
    
    private func setupTimer() {
        timer = Timer.scheduledTimer(timeInterval: 0.2,
                                     target: self,
                                     selector: #selector(onTimer),
                                     userInfo: nil,
                                     repeats: true)
    }
    
    @objc
    private func onTimer() {
        worldView.update()
    }
}

