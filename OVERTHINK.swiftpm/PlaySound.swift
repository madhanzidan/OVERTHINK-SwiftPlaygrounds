//
//  PlaySound.swift
//  OVERTHINK
//
//  Created by Zidan Ramadhan on 23/04/22.
//

import AVFoundation

var player: AVAudioPlayer!


func playSound(audioName: String) {
    if let url = Bundle.main.path(forResource: audioName, ofType: "mp3"){
        do {
            player = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: url))
            player?.play()
        } catch {
            print("error")
        }
    }
    
    
}
