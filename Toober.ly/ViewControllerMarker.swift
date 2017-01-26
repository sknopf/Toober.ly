//
//  ViewControllerMarker.swift
//  Toober.ly
//
//  Created by Stephanie Madison on 1/26/17.
//  Copyright © 2017 Stephanie Madison. All rights reserved.
//

import UIKit
import Mapbox

class ViewControllerMarker: UIViewController,
MGLMapViewDelegate {
    
    var map: MGLMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        map = MGLMapView(frame: view.bounds)
        map.setCenterCoordinate(CLLocationCoordinate2D(latitude: 40.712791, longitude: -73.997848),
            zoomLevel: 12,
            animated: false)
        map.delegate = self
        view.addSubview(map)
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        
        let marker = MGLPointAnnotation()
        marker.coordinate = map.centerCoordinate
        marker.title = "My Marker"
        marker.subtitle = "It's pretty great"
        map.addAnnotation(marker)
        map.selectAnnotation(marker, animated: true)
    }
    
    func mapView(mapView: MGLMapView, annotationCanShowCallout annotation: MGLAnnotation) -> Bool {
        return true
    }
    
}