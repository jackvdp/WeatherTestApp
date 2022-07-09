//
//  GetLocationName.swift
//  WeatherTestSwiftUI
//
//  Created by Jack Vanderpump on 07/07/2022.
//

import Foundation
import CoreLocation

class GetLocationName {
    
    func execute(location: CLLocationCoordinate2D, completion: @escaping (String) -> ()) {
        let geocoder = CLGeocoder()
        
        geocoder.reverseGeocodeLocation(CLLocation(latitude: location.latitude,
                                                   longitude: location.longitude)) { placemarks, error in
            if let firstLocation = placemarks?[0] {
                if let name = firstLocation.locality {
                    completion(name)
                    return
                }
            }
            completion("N/A")
        }
    }
}
