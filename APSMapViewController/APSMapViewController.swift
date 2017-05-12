//
//  APSMapViewController.swift
//  APSMapViewController
//
//  Created by Aishwarya Pratap Singh on 5/12/17.
//  Copyright © 2017 Aishwarya Pratap Singh. All rights reserved.
//

import Foundation
import UIKit
import MapKit

class APSMapViewController: UIViewController {
    
    @IBOutlet weak var mapview: MKMapView!
    
    var locations:[APSLocation] = []
    
    let initialLocation = CLLocation(latitude:40.7831, longitude:-73.9712)
    let regionRadius:CLLocationDistance = 10000
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setInitialLocation()
        
        let annotations = createAnnotations(locations: locations)
        mapLocations(annotations: annotations)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func createAnnotations(locations: [APSLocation]) -> [APSLocationAnnotation] {
        
        var annotations:[APSLocationAnnotation] = []
        
        for location in locations{
            
            let annotation = APSLocationAnnotation(title: location.title, locationName: location.locationName, coordinate: CLLocationCoordinate2D(latitude: location.latitude, longitude: location.longitude))
            
            annotations.append(annotation)
        }
        
        return annotations
    }
    
    func setInitialLocation() {
        
        let coordinateRegion = MKCoordinateRegionMakeWithDistance(initialLocation.coordinate, regionRadius*4, regionRadius*4)
        mapview.setRegion(coordinateRegion, animated: true)
    }
    
    func mapLocations(annotations:[APSLocationAnnotation]) {
        mapview.addAnnotations(annotations)
    }
}
