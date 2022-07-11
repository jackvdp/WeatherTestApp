//
//  CurrentLocationViewModel.swift
//  WeatherTestSwiftUI
//
//  Created by Jack Vanderpump on 07/07/2022.
//

import Foundation
import CoreLocation

class CurrentLocationViewModel: WeatherViewModel {
    
    let latittude = 51.4934
    let longitude = 0.0098
    
    override init() {
        super.init()
    }
    
    func requestLocation() {
//        getCurrentLocationByDefault()
        self.location = CLLocationCoordinate2D(latitude: latittude, longitude: longitude)
        self.locationName = "London"
//        locationController.getCurrentLocation { coord, name in
//            self.location = coord
//            self.locationName = name
//        }
    }
    
    func getCurrentLocationByDefault() {
        CLLocationManager().requestAlwaysAuthorization()
    }
    
}


