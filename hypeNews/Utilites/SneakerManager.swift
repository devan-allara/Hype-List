//
//  SneakerManager.swift
//  hypeNews
//
//  Created by Devan Allara on 11/1/18.
//  Copyright © 2018 Devan Allara. All rights reserved.
//
import UIKit

class SneakerManager {
    static let sharedInstance = SneakerManager()
    

    private var sneakers = [Sneaker(name: "Ultra Boost - Show Your Stripes", description: "An Ultra Boost", image: #imageLiteral(resourceName: "Ultraboost"),  releaseDate: "12.04.2018", brand: Brand(name: "Adidas", image: #imageLiteral(resourceName: "adidas"), followers: 100000)), Sneaker(name: "Yeezy Boost 350v2 Zebra", description: "a yeezy", image: #imageLiteral(resourceName: "Yeezys"), releaseDate: "01.12.19", brand: Brand(name: "Yeezy", image: #imageLiteral(resourceName: "yeezy"), followers: 1000000)), Sneaker(name: "Off---White Spooky Pack", description: "an ow", image: #imageLiteral(resourceName: "offwhite"), releaseDate: "12.22.19", brand: Brand(name: "Off---White", image: #imageLiteral(resourceName: "ow"), followers: 1000000)), Sneaker(name: "Off---White Jordan 1 Chicago", description: "some jordans", image: #imageLiteral(resourceName: "jordan1"), releaseDate: "12.21.19", brand: Brand(name: "Off---White", image: #imageLiteral(resourceName: "ow"), followers: 1000000))]
    
    
    func getSneaker(at index: Int) ->Sneaker {
        return sneakers[index]
    }
    
    func addSneaker(sneaker: Sneaker) {
        sneakers.append(sneaker)
        
    }
    
    func removeSneaker(at index: Int) {
        sneakers.remove(at: index)
    }
    
    func getSneakerCount() -> Int {
        return sneakers.count
    }
}
