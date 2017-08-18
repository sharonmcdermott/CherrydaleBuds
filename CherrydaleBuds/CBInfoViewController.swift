//
//  CBInfoViewController.swift
//  CherrydaleBuds
//
//  Created by sharon mcdermott on 7/25/17.
//  Copyright © 2017 Sharon McDermott. All rights reserved.
//

import UIKit


// Def: Global variables are defined outside of any function, method, closure, or type context.

// Def: Local variables are defined within a function, method, or closure context.


class CBInfoViewController: UIViewController {
    

    @IBOutlet weak var infoButton: UIButton!

    // Mark: When the info button is pressed, the information about the flower becomes visible.
    @IBAction func infoButton(_ sender: UIButton) {
        infoButton.isHidden = true
        textBackgroundView.isHidden = false
        closeButton.isHidden = false
        titleLabel.isHidden = false
        hintLabel.isHidden = false
        subtitleLabel.isHidden = false
    }
  
    
    @IBOutlet weak var closeButton: UIButton!
    
    // Mark: Whem the close button is pressed, the information about the flower becomes hidden.
    @IBAction func closeButton(_ sender: UIButton) {
        infoButton.isHidden = false
        textBackgroundView.isHidden = true
        closeButton.isHidden = true
        titleLabel.isHidden = true
        hintLabel.isHidden = true
        subtitleLabel.isHidden = true
    }
    
    @IBOutlet weak var textBackgroundView: UIView!
    
    
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var hintLabel: UILabel!
    
    @IBOutlet weak var subtitleLabel: UILabel!
  
    
    
    var cell : CBTableViewCell? {
        didSet {
            //cbCell.mainImage
            //cbCell.title
            //cbCell.subtitle
        }
        
    }

    override var prefersStatusBarHidden : Bool {
        return true
    }
    
 // Working on getting image from the table cells to show up in the CBInfoViewController


    @IBOutlet weak var infoImageView: UIImageView!
        var flowerImage: UIImage? {
            didSet { infoImageView?.image = flowerImage }
        }
    
    
    
            // Mark: made navigation bar transparent and rmoved the shadow image below the nav bar.
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
        navigationController?.navigationBar.shadowImage = UIImage()
        
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }

 }*/
}
