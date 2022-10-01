//
//  DraggableAnnotation.swift
//  DraggableAnnotation
//
//  Created by Oscar Fridh on 2022-10-01.
//

import MapKit

class DraggableAnnotation: NSObject, MKAnnotation {
    // This property must be key-value observable, which the `@objc dynamic` attributes provide.
    @objc dynamic var coordinate: CLLocationCoordinate2D
    
    /// Needed for dragability
    func setCoordinate(_ newCoordinate: CLLocationCoordinate2D) {
        self.coordinate = newCoordinate
    }
    
    init(coordinate: CLLocationCoordinate2D) {
        self.coordinate = coordinate
        super.init()
    }
}
