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
    
    override func viewDidLoad() {
        navigationController?.navigationBar.barTintColor = UIColor.red
        navigationController?.navigationBar.isTranslucent = true
        navigationController?.navigationBar.tintColor = UIColor.white
        tableView.delegate = self
        tableView.dataSource = self
        print("hi")
        super.viewDidLoad()
    }
    
    //MARK: Table View Setup Functions
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return SneakerManager.sharedInstance.getSneakerCount()
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "sneakerCell") as! SneakerTableViewCell
        cell.setUpCell(sneaker: SneakerManager.sharedInstance.getSneaker(at: indexPath.row))
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 700;
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        selectedSneaker = SneakerManager.sharedInstance.getSneaker(at: indexPath.row)
        self.performSegue(withIdentifier: "showSneakerDetail", sender: self)

    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? SneakerDetailViewController {
            destination.selectedSneaker = selectedSneaker
        }
    }
    

}
