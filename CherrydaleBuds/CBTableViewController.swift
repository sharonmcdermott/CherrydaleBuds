//
//  CBTableViewController.swift
//  CherrydaleBuds
//
//  Created by sharon mcdermott on 7/25/17.
//  Copyright © 2017 Sharon McDermott. All rights reserved.
//

import UIKit

var checkedFlowers = [String : NSObject]()

class CBTableViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet fileprivate var tableView: UITableView?
    
    fileprivate let namesFlower = ["Sweet Pea", "Gloriola Daisy Rudbeckia-hirta", "Clematis"]
    fileprivate let imagesFlower = ["Image26", "Image28", "Image33"]
    fileprivate let hintsFlower = ["found on Stafford", "found on Lee", "found on Wilson"]
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return imagesFlower.count
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "defaultCell", for: indexPath)
        
        guard let cbCell = cell as? CBTableViewCell else { return cell }
        
        cbCell.mainImage = UIImage(named: imagesFlower[indexPath.row])
        cbCell.title = namesFlower[indexPath.row]
        cbCell.subtitle = hintsFlower[indexPath.row]
        
        if let _ = checkedFlowers[namesFlower[indexPath.row]] {
            cbCell.checked = true
        } else {
            cbCell.checked = false
        }
        
        return cbCell
        
    }
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        navigationItem.hidesBackButton = true
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        // If segue.identifier does not exists just stop and return control to calling process.
        guard let identifier = segue.identifier else { return }
        
        if identifier == "flowerDetails" {
            
            // If sender is nil or not a CBTableViewCell just stop so we don't crash
            guard let cell = sender as? CBTableViewCell else { return }
            guard let viewController = segue.destination as? CBViewController else { return }
            
            viewController.cell = cell
            
        }
        
        
    }
 
 

}
