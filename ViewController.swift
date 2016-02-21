//
//  ViewController.swift
//  geolocation
//
//  Created by krishna bagale on 16/02/16.
//  Copyright (c) 2016 krishnabagale. All rights reserved.
//

import UIKit
import GoogleMaps

class ViewController: UIViewController {
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
      
        let camera = GMSCameraPosition.cameraWithLatitude(65.0167,
            longitude: 25.4667, zoom: 6)
        let mapView = GMSMapView.mapWithFrame(CGRectZero, camera: camera)
        mapView.myLocationEnabled = true
        self.view = mapView
        
        let marker = GMSMarker()
       // marker.position = CLLocationCoordinate2DMake(-33.86, 151.20)
         marker.position = CLLocationCoordinate2DMake(65.0167, 25.4667)
        marker.title = "Krishna's Pub"
        marker.snippet = "50 people are inside"
        marker.map = mapView


    }


}


