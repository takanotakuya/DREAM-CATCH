//
//  VideoListCell.swift
//  DREAM CATCH
//
//  Created by 髙野拓弥 on 2021/04/28.
//

import UIKit

class VideoListCell: UICollectionViewCell {
    
    @IBOutlet weak var channelImageView: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        
        
        channelImageView.layer.cornerRadius = 40 / 2
    }
    
}
