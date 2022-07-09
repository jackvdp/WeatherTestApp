//
//  CustomLocationVM.swift
//  WeatherTestSwiftUI
//
//  Created by Jack Vanderpump on 07/07/2022.
//

import Foundation

class CustomLocationViewModel: WeatherViewModel {
    
    init(whereFor location: String) {
        super.init()
        locationController.getCustomLocation(where: location) { coord, name in
            self.location = coord
            self.locationName = name
        }
    }
    
}
