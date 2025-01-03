//
//  AlbumDetailsCell.swift
//  Albumify
//
//  Created by Haneen Medhat on 31/12/2024.
//

import UIKit
import Kingfisher

class AlbumDetailsCell: UICollectionViewCell {
    
    @IBOutlet weak var albumImage: UIImageView!
    
    override func layoutSubviews() {
        super.layoutSubviews()
        albumImage.frame = contentView.bounds
        
    }
    
    func cellSetup(url:String?){
        if let url = url {
            albumImage.kf.setImage(with: URL(string: url), placeholder: UIImage(named: "images"))
        }else{
            albumImage.image = UIImage(named: "images")
        }
    }
}
