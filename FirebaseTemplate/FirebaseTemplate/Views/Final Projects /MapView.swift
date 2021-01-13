//
//  MapView.swift
//  FirebaseTemplate
//
//  Created by Khaled Al-Mushaileh on 1/11/21.
//  Copyright © 2021 OMAR. All rights reserved.
//

import SwiftUI
import MapKit
struct Place: Identifiable {
    let id = UUID()
    let name: String
    let latitude: Double
    let longitude: Double
    var coordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
    }
}

struct MapView: View {
    let places = [
        Place(name: "Mutlaa", latitude: 29.4144, longitude: 47.6783),
        Place(name: "AL-Naayem", latitude: 29.2852778, longitude: 47.2291667),
        Place(name: "Umm-al-Khuwaisah", latitude: 29.3833333, longitude: 47.6833333),
        Place(name: "AlJulai'a", latitude: 28.7417172, longitude: 48.2673601)
        ]
    
    @State private var region = MKCoordinateRegion(center:
                                                    CLLocationCoordinate2D(latitude: 29.3117, longitude: 47.4818),span:
      MKCoordinateSpan(latitudeDelta: 0.5, longitudeDelta: 0.5))

  var body: some View {
   
    Map(coordinateRegion: $region, annotationItems: places) { place in
        MapMarker(coordinate: place.coordinate)
        
        
    }
            .ignoresSafeArea(.all)
  }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
