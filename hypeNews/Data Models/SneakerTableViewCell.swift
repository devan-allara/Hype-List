//
//  SneakerTableViewCell.swift
//  hypeNews
//
//  Created by Devan Allara on 11/1/18.
//  Copyright © 2018 Devan Allara. All rights reserved.
//

import UIKit

class SneakerTableViewCell: UITableViewCell {
    @IBOutlet weak var sneakerImage: UIImageView!
    @IBOutlet weak var sneakerList: UILabel!
    @IBOutlet weak var brandImage: UIImageView!
    @IBOutlet weak var brandLabel: UILabel!
    
    @IBOutlet weak var releaseDate: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
      
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    func setUpCell(sneaker: Sneaker){
        self.brandImage.layer.cornerRadius = self.brandImage.frame.size.height / 2;
        self.brandImage.clipsToBounds = true
        self.brandLabel.layer.borderWidth = 0

        self.sneakerImage.image = sneaker.image
        self.sneakerList.text = sneaker.name
        self.brandImage.image = sneaker.brand.image
        self.brandLabel.text = sneaker.brand.name
        self.releaseDate.text = sneaker.releaseDate
    }
}
