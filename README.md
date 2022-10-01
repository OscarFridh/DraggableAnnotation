# Draggable Annotations in MapKit

This is a demo of how we can let the user pick up and drag around annotations in MapKit.

In order to make it work we need to:
- Mark the MKAnnotationView as draggable
- implement the setCoordinate: method in our MKAnnotation class

Changes can then be observed using KVO.
