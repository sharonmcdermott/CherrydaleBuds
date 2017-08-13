//
//  CBTableViewController.swift
//  CherrydaleBuds
//
//  Created by sharon mcdermott on 7/25/17.
//  Copyright © 2017 Sharon McDermott. All rights reserved.
//

import UIKit


// Def: Global variables are defined outside of any function, method, closure, or type context.

// Def: Local variables are defined within a function, method, or closure context.




var checkedFlowers = [String : NSObject]()

class CBTableViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet fileprivate var tableView: UITableView?
    
    fileprivate let namesFlower = ["Sweet Cicely 1", "Echinacea (Cone Flower) 2", "Tea Rose 3", "Peony (pink) 4", "Fennel  5", "Heliopsis Helianthroids (False Sunflower) 6", "Day Lilly 7", "Tea Rose 8", "Echinops (Globe Thistle) 9", "Oak Leaf Hydrangea 10", "Day Lilly 11", "Bee Balm 12", "Tea Rose 13", "Globe Thisle 14", "Fennel 15", "Knockout Rose 16", "Knockout Rose 17", "Rose of Sharon (Hibiscus) 19", "Cleome, Spider Flower 20", "Poppy 21", "Lambs Ears 22", "Hardy Hibiscus 23", "Crape Myrtle 24", "Gooseneck Loosestrife 25", "Sweet Pea 26", "Bee Balm 27", "Gloriola Daisy Rudbeckia-hirta 28", "Wysteria Vine 32", "Clematis 33", "Russian Sage 35", "Sedum Autumn Joy 36", "New Ginea Impatient 37", "Ceratostigma Plumbeginoides (Plumbago) 38", "Marigold 39", "Petunia 40"]
    
    fileprivate let imagesFlower = ["Image1", "Image2", "Image3", "Image4", "Image5", "Image6", "Image7", "Image8", "Image9", "Image10", "Image11", "Image12", "Image13", "Image14", "Image15", "Image16", "Image17", "Image19", "Image20", "Image21", "Image22", "Image23", "Image24", "Image25", "Image26", "Image27", "Image28",  "Image32", "Image33", "Image35", "Image36", "Image37", "Image38", "Image39", "Image40"]
    
    fileprivate let hintsFlower = ["Found on N. Stafford St. 1", "Found on N. Stafford St. 2", "Found on N. Randolph St. 3", "Found on N. Randolph St. 4", "Found on N. Stafford St. 5", "Found on N. Stafford St. 6", "Found on N. Randolph St.  7", "Found on N. Randolph 8", "Found on N. Stafford St. 9", "Found on N. Stafford St. 10", "Found on N. Stafford St. 11", "Found on N. Randolph St. 12", "Found on N. Randolph St.  13", "Found on N. Stafford St. 14", "Found on N. Stafford 15", "Found on N. Randolph 16", "found on 17th St. N. 17", "found on N. Stafford St. 19", "found on N. Stafford  20", "found on N. Stafford, Ballston 21", "found on N. Stafford, Ballston 22", "Found on Lee Hwy. 23", "found on Washington Blvd. 24",  "found on N. Stafford 25", "found on N. Quincy St. 26", "found on W. Broad St. 27",  "Found on W. Broad St. 28", "found on N. Stafford 32", "found on N. Nelson St. 33", "found on 35", "found on 36", "found on 37", "found on W. Broad St. 38", "found on N. Randolph St. 39", "found on Lee Hwy, Falls Church 40"]
    
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
