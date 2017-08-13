//
//  CBWelcomePageViewController.swift
//  CherrydaleBuds
//
//  Created by sharon mcdermott on 7/28/17.
//  Copyright © 2017 Sharon McDermott. All rights reserved.
//

import UIKit

class CBWelcomePageViewController: UIViewController {
  
    
    @IBAction func goToTableView(_ sender: UIButton) {
    }

   /*  Trying to get the nav bar to not show in this view.
    
    func setNavigationBarHidden(_ hidden: true, animated: true)
    
    override func viewWillAppear(_ animated: Bool) {
        setNavigationBarHidden(_ hidden: true, animated: true)

    }

 */
    
// Mark: made navigation bar transparent and rmoved the shadow image below the nav bar.
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
        navigationController?.navigationBar.shadowImage = UIImage()


        // Do any additional setup after loading the view.
    }
    
    override var prefersStatusBarHidden : Bool {
        return true
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
    */

}
