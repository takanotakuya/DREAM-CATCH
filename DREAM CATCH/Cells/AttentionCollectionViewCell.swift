//
//  AttentionCollectionViewCell.swift
//  DREAM CATCH
//
//  Created by 髙野拓弥 on 2021/04/29.
//

import UIKit

class AttentionCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var thumbnailImageView: UIImageView!
    
    override func awakeFromNib() {
            super.awakeFromNib()
            
            backgroundColor = .purple
            
        }
    
}
