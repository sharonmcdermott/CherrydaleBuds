//
//  CBTableViewCell.swift
//  CherrydaleBuds
//
//  Created by sharon mcdermott on 7/27/17.
//  Copyright © 2017 Sharon McDermott. All rights reserved.
//

import UIKit

class CBTableViewCell: UITableViewCell {
    @IBOutlet weak var flowerImage: UIImageView!
    @IBOutlet weak var nameOfFlower: UILabel!
    @IBOutlet weak var typeOfFlower: UILabel!
    @IBOutlet weak var checkMark: UIButton!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
