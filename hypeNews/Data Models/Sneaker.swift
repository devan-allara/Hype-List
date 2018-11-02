//
//  Sneaker.swift
//  hypeNews
//
//  Created by Devan Allara on 11/1/18.
//  Copyright © 2018 Devan Allara. All rights reserved.
//

import UIKit

class Sneaker {
    let name: String
    let description: String
    let image: UIImage
    let releaseDate: String
    let brand: Brand
    
    init(name: String, description: String, image: UIImage, releaseDate: String, brand:Brand){
        self.name = name
        self.description = description
        self.image = image
        self.releaseDate = releaseDate
        self.brand = brand
    }
}
