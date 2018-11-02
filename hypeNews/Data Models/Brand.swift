//
//  Brand.swift
//  hypeNews
//
//  Created by Devan Allara on 11/2/18.
//  Copyright © 2018 Devan Allara. All rights reserved.
//

import UIKit

class Brand {
    var name: String
    var image: UIImage
    var followers: Int
    
    init(name: String, image: UIImage, followers: Int) {
        self.name = name
        self.image = image
        self.followers = followers
    }
}
