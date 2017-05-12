//
//  ViewController.swift
//  APSMapViewController
//
//  Created by Aishwarya Pratap Singh on 5/12/17.
//  Copyright © 2017 Aishwarya Pratap Singh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func mockLocations() -> [APSLocation] {
        
        let location1 = APSLocation(title: "Empire State", locationName: "Empire State", latitude: 40.7484, longitude: -73.9857)
        let location2 = APSLocation(title: "Central Park", locationName: "Central Park", latitude: 40.7829, longitude: -73.9654)
//        let location3 = APSLocation(title: "Central Park", locationName: "Central Park", latitude: 40.7829, longitude: -73.9654)
        let location4 = APSLocation(title: "Times Square", locationName: "Times Square", latitude: 40.7589, longitude: -73.9851)
        let location5 = APSLocation(title: "Battery Park", locationName: "Battery Park", latitude: 40.7033, longitude: -74.0170)
        let location6 = APSLocation(title: "Rockefeller Center", locationName: "Rockefeller Center", latitude: 40.7587, longitude: -73.9787)
        let location7 = APSLocation(title: "Washington Square Park", locationName: "Washington Square Park", latitude: 40.7308, longitude: -73.9973)
        
        let locations = [location1, location2, location4, location5, location6, location7]
        
        return locations
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "plotLocations" {
            let viewController = segue.destination as! APSMapViewController
            viewController.locations = mockLocations()
        }
    }
}

