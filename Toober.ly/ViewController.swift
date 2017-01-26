//
//  ViewController.swift
//  Toober.ly
//
//  Created by Stephanie Madison on 3/12/16.
//  Copyright © 2016 Stephanie Madison. All rights reserved.
//

import UIKit
//import Mapbox

class ViewController: UIViewController {

    var map: MGLMapView!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view, typically from a nib.

        map = MGLMapView(frame: view.bounds)
        map.setCenterCoordinate(CLLocationCoordinate2D(latitude: 40.712791, longitude: -73.997848),
            zoomLevel: 12,
            animated: false)
        view.addSubview(map)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

