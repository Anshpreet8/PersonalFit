//
//  ViewController.swift
//  PersonalFit
//
//  Created by Anshpreet Sandhu on 2020-07-27.
//  Copyright © 2020 Anshpreet Sandhu. All rights reserved.
//

import UIKit
import AVKit
import AVFoundation

class ViewController: UIViewController {
    
   var videoplayer: AVPlayer?
    
    var videoPlayerLayer: AVPlayerLayer?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.playVideo()
    }
    
    private func playVideo() {

        let path = Bundle.main.path(forResource: "a", ofType:"mp4")
        
        guard path != nil else {
            return
        }
        
        let url = URL(fileURLWithPath: path!)
        
        let item = AVPlayerItem(url: url)

        videoplayer = AVPlayer(playerItem: item)
        videoPlayerLayer = AVPlayerLayer(player: videoplayer)

        videoPlayerLayer?.frame = self.view.frame
        videoPlayerLayer?.videoGravity = AVLayerVideoGravity.resizeAspectFill
        videoPlayerLayer?.zPosition = 0

        self.view.layer.insertSublayer(videoPlayerLayer!, at:0)

        videoplayer?.seek(to: CMTime.zero)
        videoplayer?.play()
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
