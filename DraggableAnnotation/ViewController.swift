//
//  ViewController.swift
//  DraggableAnnotation
//
//  Created by Oscar Fridh on 2022-10-01.
//

import MapKit
import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var mapView: MKMapView!
    
    private var annotation = DraggableAnnotation(coordinate: CLLocationCoordinate2D())
    private var observation: NSKeyValueObservation?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        annotation.coordinate = mapView.region.center
        mapView.addAnnotation(annotation)
        observation = annotation.observe(\.coordinate) { annotation, change in
            print(annotation.coordinate)
        }
    }
}

extension ViewController: MKMapViewDelegate {
    func mapView(_ mapView: MKMapView, didAdd views: [MKAnnotationView]) {
        views.forEach { $0.isDraggable = true }
    }
}
