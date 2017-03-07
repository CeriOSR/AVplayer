//
//  MusicController.swift
//  Movie and Music Player
//
//  Created by Rey Cerio on 2017-03-06.
//  Copyright © 2017 CeriOS. All rights reserved.
//

import UIKit
import AVFoundation

class MusicController: UIViewController {
    
    var myAudioPlayer = AVAudioPlayer()

    @IBAction func restartButton(_ sender: Any) {
        if myAudioPlayer.isPlaying {
            myAudioPlayer.currentTime = 0
            myAudioPlayer.play()
            
        } else {
            
            
        }
        
    }
    
    @IBAction func playButton(_ sender: Any) {
        
        myAudioPlayer.play()
    }
    
    @IBAction func stopButton(_ sender: Any) {
        
        myAudioPlayer.stop()
        myAudioPlayer.currentTime = 0
    }
    
    @IBAction func pauseButton(_ sender: Any) {
        if myAudioPlayer.isPlaying {
            myAudioPlayer.pause()

        }
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //let fileURL = NSURL(fileURLWithPath: "/Users/reycerio/Desktop/Movie and Music Player/Movie and Music Player/08 Razz.mp3")
        
        do {
            myAudioPlayer = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "08 Razz", ofType: "mp3")!))
        } catch let err {
            print(err )
        }
        
        myAudioPlayer.prepareToPlay()
        
        
        //play in background even when phone is sleepmode (need to go to capabalities, background mode on, check audio/video)
        let audioSession = AVAudioSession.sharedInstance()
        do {
            try audioSession.setCategory(AVAudioSessionCategoryPlayback)

        } catch {
            
        }
    }

    override func viewDidAppear(_ animated: Bool) {
        
    }
}
