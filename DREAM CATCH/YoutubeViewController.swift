//
//  YoutubeViewController.swift
//  DREAM CATCH
//
//  Created by 髙野拓弥 on 2021/04/29.
//

import UIKit
import Nuke

class YoutubeViewController: UIViewController {
    
    var selectedItem: Item?
    
    @IBOutlet weak var videoImageView: UIImageView!
    @IBOutlet weak var channelImageView: UIImageView!
    @IBOutlet weak var videoTitleLabel: UILabel!
    @IBOutlet weak var channelTitleLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupViews()
        
    }
    
    private func setupViews() {
        channelImageView.layer.cornerRadius = 45 / 2

        if let url = URL(string: selectedItem?.snippet.thumbnails.medium.url ?? "") {
            Nuke.loadImage(with: url, into: videoImageView)
        }
        
        if let channelUrl = URL(string: selectedItem?.channel?.items[0].snippet.thumbnails.medium.url ?? "") {
            Nuke.loadImage(with: channelUrl, into: channelImageView)
        }
        
        videoTitleLabel.text = selectedItem?.snippet.title
        channelTitleLabel.text = selectedItem?.channel?.items[0].snippet.title
        
        //            let panGeture = UIPanGestureRecognizer(target: self, action: #selector(panVideoImageView))
        //            videoImageView.addGestureRecognizer(panGeture)
        
    }
    
}

