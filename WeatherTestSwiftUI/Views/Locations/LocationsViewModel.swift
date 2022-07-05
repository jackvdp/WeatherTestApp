//
//  LocationsViewModel.swift
//  WeatherTestSwiftUI
//
//  Created by Jack Vanderpump on 05/07/2022.
//

import Foundation

class LocationsViewModel: ObservableObject {
    
    @Published var locations = [String]() {
        didSet {
            setUserDefaults()
        }
    }
    
    init() {
        retrieveFromUserDefaults()
    }
    
    let defaultsLocationsKey = "Locations"
    
    func addLocation(_ location: String) {
        locations.append(location)
    }
    
    func removeLocation(_ location: String) {
        locations.removeAll(where: { $0 == location})
    }
    
    private func retrieveFromUserDefaults() {
        if let locations = UserDefaults.standard.array(forKey: defaultsLocationsKey) as? [String] {
            self.locations = locations
        }
    }
    
    private func setUserDefaults() {
        UserDefaults.standard.set(locations, forKey: defaultsLocationsKey)
    }
}
