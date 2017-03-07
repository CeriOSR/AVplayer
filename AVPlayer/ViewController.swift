//
//  ViewController.swift
//  Movie and Music Player
//
//  Created by Rey Cerio on 2017-03-06.
//  Copyright © 2017 CeriOS. All rights reserved.
//

import UIKit
import AVKit
import AVFoundation

class ViewController: UIViewController {

    var movieController = AVPlayerViewController()
    var moviePlayer = AVPlayer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let fileURL = NSURL(fileURLWithPath: "/Users/reycerio/Desktop/Movie and Music Player/Movie and Music Player/Taka V Taka.mov")
        
        moviePlayer = AVPlayer(url: fileURL as URL)
        movieController.player = moviePlayer
        present(movieController, animated: true) {
            self.moviePlayer.play()
        }
    }

    
    override func viewDidAppear(_ animated: Bool) {
        
        //called everytime view appears
    }

}

