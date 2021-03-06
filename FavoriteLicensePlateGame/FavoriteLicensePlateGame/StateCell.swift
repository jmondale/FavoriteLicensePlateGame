//
//  StateCell.swift
//  FavoriteLicensePlateGame
//
//  Created by Jaye on 10/1/16.
//  Copyright © 2016 5mConsult. All rights reserved.
//

import UIKit

class StateCell: UITableViewCell {
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var artistNameLabel: UILabel!
    @IBOutlet weak var artworkImageView: UIImageView!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
