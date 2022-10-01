# Draggable Annotations in MapKit

This is a demo of how we can let the user pick up and drag around annotations in MapKit.

https://user-images.githubusercontent.com/25850923/193423973-f5037a3e-a17d-4b36-bfe5-8eab479bf194.mov

In order to make it work we need to:
- Mark the MKAnnotationView as draggable
- implement the setCoordinate: method in our MKAnnotation class

Changes can then be observed using KVO.
