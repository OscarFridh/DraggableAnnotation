# Draggable Annotations in MapKit

This is a demo of how we can let the user pick up and drag around annotations in MapKit.

https://user-images.githubusercontent.com/25850923/193423973-f5037a3e-a17d-4b36-bfe5-8eab479bf194.mov

In order to make it work we need to:
- Mark the MKAnnotationView as draggable
- implement the setCoordinate: method in our MKAnnotation class

```swift

extension ViewController: MKMapViewDelegate {
    func mapView(_ mapView: MKMapView, didAdd views: [MKAnnotationView]) {
        views.forEach { $0.isDraggable = true }
    }
}

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

```

Changes can then be observed using KVO.

```swift

mapView.addAnnotation(annotation)
observation = annotation.observe(\.coordinate) { annotation, change in
    print(annotation.coordinate)
}

```
