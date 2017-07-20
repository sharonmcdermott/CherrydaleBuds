//
//  ViewController.swift
//  CherrydaleBuds
//
//  Created by sharon mcdermott on 7/15/17.
//  Copyright © 2017 Sharon McDermott. All rights reserved.
//

import UIKit

/// Main view controller with image view.
class CBViewController: UIViewController {
    
    // MARK: - IBOutlet Variables -
    
    ///
    @IBOutlet var imageView: UIImageView!
    
    // MARK: - Private Variables -
    
    /// Start with the first image in the array, whos index is 0.
    fileprivate var currentImageIndex = 0
    
    /// These are the images in the array in a lazy closure to prevent it from being used more than once.
    fileprivate lazy var images = ["Image1", "Image2", "Image3", "Image4", "Image5"]

    
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

