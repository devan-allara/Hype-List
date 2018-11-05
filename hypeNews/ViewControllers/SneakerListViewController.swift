//
//  SneakerListViewController.swift
//  hypeNews
//
//  Created by Devan Allara on 11/1/18.
//  Copyright © 2018 Devan Allara. All rights reserved.
//

import UIKit

class SneakerListViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    //MARK: Interface elements
    @IBOutlet weak var tableView: UITableView!
    
    var selectedSneaker: Sneaker!
    var selectedBrand: Brand!
    
    override func viewDidLoad() {
        navigationController?.navigationBar.barTintColor = UIColor.red
        navigationController?.navigationBar.isTranslucent = true
        navigationController?.navigationBar.tintColor = UIColor.white
        tableView.delegate = self
        tableView.dataSource = self
        super.viewDidLoad()
    }
    
    //MARK: Table View Setup Functions
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return SneakerManager.sharedInstance.getSneakerCount()
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "sneakerCell") as! SneakerTableViewCell
        cell.setUpCell(sneaker: SneakerManager.sharedInstance.getSneaker(at: indexPath.row))
        cell.brandLabel.isUserInteractionEnabled = true
        let tap = UITapGestureRecognizer(target: self, action: Selector("brandTapped"))
        cell.brandLabel.addGestureRecognizer(tap)
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 700;
    }

    func brandTapped(sneaker: Sneaker){
        print("hi")
        self.performSegue(withIdentifier: "showSneakerDetail", sender: self)
//        let brandLabel = sender as! UILabel
//        if brandLabel.text == "Yeezy"{
//            selectedBrand = Brand(name: "Yeezy", image: #imageLiteral(resourceName: "yeezy"), followers: 92234)
//        } else if brandLabel.text == "Adidas" {
//            selectedBrand = Brand(name: "Adidas", image: #imageLiteral(resourceName: "adidas"), followers: 23352)
//        } else {
//            selectedBrand = Brand(name: "Off---White", image: #imageLiteral(resourceName: "ow"), followers: 41313)
//        }
//        self.performSegue(withIdentifier: "showBrandProfile", sender: self)
        
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? SneakerDetailViewController {
            destination.selectedSneaker = selectedSneaker
        }
    }
    

}
