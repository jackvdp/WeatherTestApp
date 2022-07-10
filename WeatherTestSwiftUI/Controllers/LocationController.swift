//
//  LocationController.swift
//  WeatherTestSwiftUI
//
//  Created by Jack Vanderpump on 07/07/2022.
//

import Foundation
import CoreLocation

class LocationController {
    
    let currentLocationUseCase = GetCurrentLocation()
    
    func getCurrentLocation(completion: @escaping (CLLocationCoordinate2D?, String?) -> ()) {
        currentLocationUseCase.execute(completion: completion)
    }
    
    func getCustomLocation(where location: String, completion: @escaping (CLLocationCoordinate2D?, String?) -> ()) {
        GetCustomLocation().execute(location: location, completion: completion)
    }
    
}
