//
//  Places.swift
//  Maps
//
//  Created by Alondra García Morales on 27/11/23.
//

import SwiftUI
import MapKit

struct Place: Identifiable{
    let id = UUID()
    let name : String
    let latitude : Double
    let longitude : Double
    var coordinate : CLLocationCoordinate2D{
        CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
    }
}
struct Places: View {
    
    let places = [
        Place(name: "Central Park", latitude: 40.785091, longitude: -73.968285),
        Place(name: "Empire State", latitude: 40.7484405, longitude: -73.9856644),
        Place(name: "Time Square", latitude: 40.758895, longitude: -73.985131)
    ]
    
    @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 29.9792, longitude: 31.1342), latitudinalMeters: 1000, longitudinalMeters: 1000)
    
    
    var body: some View {
        Map(coordinateRegion: $region, annotationItems: places){ place in
            MapMarker(coordinate: place.coordinate)
        }
    }
}

