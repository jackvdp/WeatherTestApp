//
//  ViewModel.swift
//  WeatherTestUI
//
//  Created by Jack Vanderpump on 04/07/2022.
//

import Foundation
import CoreLocation

class CurrentLocationViewModel: WeatherViewModel, CLLocationManagerDelegate {

    override init() {
        super.init()
        manager.delegate = self
        requestLocation()
    }

    func requestLocation() {
        manager.requestLocation()
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        location = locations.first?.coordinate
    }
    
    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
        print(error)
    }
    
}
