//
//  CBViewController.swift
//  CherrydaleBuds
//
//  Created by sharon mcdermott on 7/15/17.
//  Copyright © 2017 Sharon McDermott. All rights reserved.
//

import UIKit

/// Main view controller with image view.
class CBViewController: UIViewController {
    
    var cell: CBTableViewCell? {
        didSet {
            // Update labels on this page to match the contents of this cell object
            // i.e.
            // imageViewFlower.image = cell.mainImage
            // labelTitleFlower.text = cell.title
            // labelSubtitleFlower.text = cell.subtitle
        }
    }
    
    // MARK: - IBOutlet Variables -
    
    ///
    @IBOutlet var imageView: UIImageView!
    
    // MARK: - Private Variables -
    
    /// Start with the first image in the array, whos index is 0.
    fileprivate var currentImageIndex = 0
    
    /// These are the images in the array in a lazy closure to prevent it from being used more than once.
    fileprivate lazy var images = ["Image1", "Image2", "Image3", "Image4", "Image5", "Image6", "Image7", "Image8", "Image9", "Image10", "Image11", "Image12", "Image13", "Image14", "Image15", "Image16", "Image17", "Image19", "Image20", "Image21", "Image22", "Image23", "Image24", "Image25", "Image26", "Image27", "Image28",  "Image32", "Image33", "Image35", "Image36", "Image37", "Image38", "Image39", "Image40"]

    
    
    
    
    // MARK: - UIViewController Methods -

    override func viewDidLoad() {
        super.viewDidLoad()
        if let image = UIImage (named: images[0]) {
            imageView.image = image
        }
    }
    

    
    override func motionBegan(_ motion: UIEventSubtype, with event: UIEvent?) {
        //doShake()
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        switchImage()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override var prefersStatusBarHidden: Bool {
        return true
    }

    // MARK: - ViewController Methods -
    
    /// This function performs the iteration through the index of images in the images array.
    func switchImage() {
        currentImageIndex = (currentImageIndex + 1) % images.count
        let image = UIImage(named: images[currentImageIndex])
        imageView.image = image
    }


}

