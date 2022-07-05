//
//  CustomLocationViewModel.swift
//  WeatherTestSwiftUI
//
//  Created by Jack Vanderpump on 05/07/2022.
//

import Foundation
import CoreLocation

class CustomLocationViewModel: WeatherViewModel {
    
    init(location: String) {
        super.init()
        getLocationCoord(location: location)
    }
    
    func getLocationCoord(location: String) {
        let geocoder = CLGeocoder()
        geocoder.geocodeAddressString(location) { (placemarks, error) in
            if error == nil {
                if let placemark = placemarks?[0] {
                    let location = placemark.location!
                    
                    self.location = location.coordinate
                    return
                }
            }
            
        }
    }

}
