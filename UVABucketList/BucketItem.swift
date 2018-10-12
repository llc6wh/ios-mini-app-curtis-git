//
//  BucketItem.swift
//  UVABucketList
//
//  Created by user145551 on 10/3/18.
//  Copyright © 2018 user145551. All rights reserved.
//

import Foundation

class BucketItem {
    
    var itemName: String = "New Item"
    var date: Date
    var description: String = ""
    var latitude: Double = 0.0
    var longitude: Double = 0.0
    
    
    
    init(itemName: String, date: Date, description: String, latitude: Double, longitude: Double){
        self.itemName = itemName
        self.date = date
        self.description = description
        self.latitude = latitude
        self.longitude = longitude
        
    }
    
    
}
