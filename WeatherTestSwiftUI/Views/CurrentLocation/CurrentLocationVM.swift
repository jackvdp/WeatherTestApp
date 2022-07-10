//
//  CurrentLocationViewModel.swift
//  WeatherTestSwiftUI
//
//  Created by Jack Vanderpump on 07/07/2022.
//

import Foundation

class CurrentLocationViewModel: WeatherViewModel {
    
    override init() {
        super.init()
    }
    
    func requestLocation() {
        locationController.getCurrentLocation { coord, name in
            self.location = coord
            self.locationName = name
        }
    }
    
}
