//
//  CurrentLocationViewModel.swift
//  WeatherTestSwiftUI
//
//  Created by Jack Vanderpump on 07/07/2022.
//

import Foundation
import CoreLocation

class CurrentLocationViewModel: WeatherViewModel {
    
    override init() {
        super.init()
    }
    
    func requestLocation() {
        getCurrentLocationByDefault()
        locationController.getCurrentLocation { coord, name in
            self.location = coord
            self.locationName = name
        }
    }
    
    func getCurrentLocationByDefault() {
        CLLocationManager().requestAlwaysAuthorization()
    }
    
}
