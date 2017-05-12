//
//  APSLocationAnnotation.swift
//  APSMapViewController
//
//  Created by Aishwarya Pratap Singh on 5/12/17.
//  Copyright © 2017 Aishwarya Pratap Singh. All rights reserved.
//

import Foundation
import MapKit

class APSLocationAnnotation: NSObject, MKAnnotation {
    var title: String?
    var locationName: String?
    let coordinate: CLLocationCoordinate2D
    
    init(title:String?, locationName:String?, coordinate:CLLocationCoordinate2D) {
        self.title = title
        self.locationName = locationName
        self.coordinate = coordinate
        
        super.init()
    }
    
    var subtitle: String?{
        return locationName
    }
}
