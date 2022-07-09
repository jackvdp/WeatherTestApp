//
//  GetCustomLocation.swift
//  WeatherTestSwiftUI
//
//  Created by Jack Vanderpump on 07/07/2022.
//

import Foundation
import CoreLocation

class GetCustomLocation {
    
    func execute(location: String,
                 completion: @escaping (CLLocationCoordinate2D?, String?) -> ()) {
        
        getCoord(location: location) { coord in
            guard let coord = coord else {
                completion(nil, nil)
                return
            }
            
            self.getLocationName(location: coord) { name in
                completion(coord, name)
            }
        }
    }
    
    func getCoord(location: String,
                  completion: @escaping (CLLocationCoordinate2D?) -> ()) {
        
        let geocoder = CLGeocoder()
        geocoder.geocodeAddressString(location) { (placemarks, error) in
            if error == nil {
                if let placemark = placemarks?[0] {
                    let location = placemark.location!
                    
                    completion(location.coordinate)
                    return
                }
            }
            completion(nil)
        }
        
    }
    
    func getLocationName(location: CLLocationCoordinate2D,
                         completion: @escaping (String?) -> ()) {
        GetLocationName().execute(location: location) { name in
            completion(name)
        }
    }
    
}
