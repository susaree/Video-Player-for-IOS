//
//  ViewController.swift
//  videoPlayer
//
//  Created by user915640 on 7/27/19.
//  Copyright © 2019 user915640. All rights reserved.
//

import UIKit
import AVKit
class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
}

extension ViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellview", for: indexPath) as! DataCellClass
        
        let videourl = NSURL(string: "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerMeltdowns.mp4")
        
        let avPlayer = AVPlayer(url:videourl! as URL)
        
        cell.PlayerViewClass?.playerLayer.player = avPlayer
        cell.PlayerViewClass.player?.play()
        return cell
    }
}
