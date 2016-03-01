//
//  MapViewController.swift
//  WorldTrotter
//
//  Created by Carlos Bautista on 2/29/16.
//  Copyright © 2016 cbautista. All rights reserved.
//

import UIKit
import MapKit

class MapViewController: UIViewController {
    
    var mapView: MKMapView!
    override func loadView() {
        //Create a map view
        mapView = MKMapView()
        
        //Set it as *the* view of this controller
        view = mapView
        
        segmentedControl.backgroundColor = UIColor.whiteColor() .colorWithAlphaComponent(0.5)
        segmentedControl.selectedSegmentIndex = 0
        segmentedControl.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview (segmentedControl)
        
        let topConstraint = segmentedControl.topAnchor.constraintEqualToAnchor(topLayoutGuide.bottomAnchor, constant: 8)
        let leadingConstraint = segmentedControl.leadingAnchor.constraintEqualToAnchor(view.leadingAnchor)
        let trailingConstraint = segmentedControl.trailingAnchor.constraintEqualToAnchor(view.trailingAnchor)
        
        topConstraint.active = true
        leadingConstraint.active = true
        trailingConstraint.active = true
        
    }
    let segmentedControl = UISegmentedControl (items: ["Standard","Hybrid","Satellite"])

    override func viewDidLoad() {
        super.viewDidLoad()
        print("MapViewController loaded its view.")
            }
}
