//
//  ViewController.swift
//  video_player
//
//  Created by Dera Victor on 21/02/2024.
//

import UIKit
import AVKit //interface for media playback
import AVFoundation //controls over audio and video interactions

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        playVideo()
    }
//    private func findVideo() -> String{
//        guard let vidPath=Bundle.main.path(forResource: "me0", ofType: "mov")else{
//            debugPrint("video not found")
//            return
//        }
//        return vidPath
//    }
    private func playVideo(){
        guard let vidPath=Bundle.main.path(forResource: "me0", ofType: "MOV")else{
            debugPrint("video not found")
            return
        }
        let player=AVPlayer(url: URL(fileURLWithPath: vidPath))
        let playerController=AVPlayerViewController()
        
        playerController.player=player
        
        present(playerController,animated: true){
            player.play();
        }
        
        
    }
}

