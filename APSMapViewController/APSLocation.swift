//
//  APSLocation.swift
//  APSMapViewController
//
//  Created by Aishwarya Pratap Singh on 5/12/17.
//  Copyright © 2017 Aishwarya Pratap Singh. All rights reserved.
//

import Foundation

class APSLocation: NSObject {
    
    var title:String?
    var locationName:String?
    var latitude:Double
    var longitude:Double
    
    init(title:String?, locationName:String?, latitude:Double, longitude:Double) {
        self.title = title
        self.locationName = locationName
        self.latitude = latitude
        self.longitude = longitude
        
        super.init()
    }
    
}
