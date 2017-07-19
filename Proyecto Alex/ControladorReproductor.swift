//
//  ControladorReproductor.swift
//  Proyecto Alex
//
//  Created by Alumno on 12/7/17.
//  Copyright © 2017 Alex. All rights reserved.
//

import UIKit
import AVKit
import AVFoundation

class ControladorReproductor :UIViewController{
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let videoURL = URL(string: "https://clips.vorwaerts-gmbh.de/big_buck_bunny.mp4")
        let player = AVPlayer(url: videoURL!)
        let playerLayer = AVPlayerLayer(player: player)
        playerLayer.frame = self.view.bounds
        self.view.layer.addSublayer(playerLayer)
        player.play()
    }
}
