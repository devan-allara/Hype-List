//
//  SneakerDetailViewController.swift
//  hypeNews
//
//  Created by Devan Allara on 11/1/18.
//  Copyright © 2018 Devan Allara. All rights reserved.
//

import UIKit

class SneakerDetailViewController: UIViewController {

    @IBOutlet weak var sneakerName: UILabel!

    
    @IBOutlet weak var sneakerImage: UIImageView!
    
    @IBOutlet weak var sneakerDescription: UILabel!
    
    
    var selectedSneaker: Sneaker!
    
    
    override func viewDidLoad() {
     
        sneakerName.text = selectedSneaker.name
        sneakerDescription.text = selectedSneaker.description
        self.sneakerImage.image = selectedSneaker.image
        super.viewDidLoad()
        
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
