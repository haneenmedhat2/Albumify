//
//  AlbumsCell.swift
//  Albumify
//
//  Created by Haneen Medhat on 31/12/2024.
//

import UIKit

class AlbumsCell: UITableViewCell {
    @IBOutlet weak var albumTitle: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setupCell(title:String){
        albumTitle.text = title
    }

}
