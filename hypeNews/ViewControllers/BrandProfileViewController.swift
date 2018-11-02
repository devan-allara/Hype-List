//
//  BrandProfileViewController.swift
//  hypeNews
//
//  Created by Devan Allara on 11/2/18.
//  Copyright © 2018 Devan Allara. All rights reserved.
//

import UIKit

class BrandProfileViewController: UIViewController {
    @IBOutlet weak var brandImage: UIImageView!
    @IBOutlet weak var brandName: UILabel!
    @IBOutlet weak var followerLabel: UILabel!
   
    var currentBrand: Brand!
  
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.brandImage.image = currentBrand.image
        self.brandName.text = currentBrand.name
        self.followerLabel.text = String(currentBrand.followers)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
