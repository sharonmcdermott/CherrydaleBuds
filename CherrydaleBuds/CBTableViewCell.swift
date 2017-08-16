//
//  CBTableViewCell.swift
//  CherrydaleBuds
//
//  Created by sharon mcdermott on 7/27/17.
//  Copyright © 2017 Sharon McDermott. All rights reserved.
//

import UIKit



class CBTableViewCell: UITableViewCell {
    
    
    
    
    @IBOutlet fileprivate weak var mainImageView: UIImageView?
    @IBOutlet fileprivate weak var titleLabel: UILabel?
    @IBOutlet fileprivate weak var subtitleLabel: UILabel!

    


    
    
    

    // @IBOutlet fileprivate weak var checkMark: UIButton?
    
    var mainImage: UIImage? {
        didSet {
            //
            // guard let mainImageView = mainImageView else { return }
            // -- or --
            // if let mainImageView = mainImageView {
            //    mainImageView.image = mainImage
            // }
            // -- or --
            mainImageView?.image = mainImage
        }
    }
    
    var title: String? = "" {
        didSet {
            titleLabel?.text = title
        }
    }
    
    var subtitle: String? = "" {
        didSet {
            subtitleLabel?.text = subtitle
        }
    }
    var checked: Bool? = false
    

    


    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

}
