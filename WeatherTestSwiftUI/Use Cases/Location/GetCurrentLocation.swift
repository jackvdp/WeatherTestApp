//
//  GetCurrentLocation.swift
//  WeatherTestSwiftUI
//
//  Created by Jack Vanderpump on 07/07/2022.
//

import Foundation
import CoreLocation

class GetCurrentLocation: NSObject, CLLocationManagerDelegate {
    
    private let manager = CLLocationManager()
    var locationName: String?
    var completion: ((CLLocationCoordinate2D?, String?) -> ())?
    var location: CLLocationCoordinate2D? {
        didSet {
            getLocationName()
        }
    }
    
    override init() {
        super.init()
        manager.delegate = self
    }
    
    deinit {
        print("deinit")
    }
    
    func execute(completion: @escaping (CLLocationCoordinate2D?, String?) -> ()) {
        self.completion = completion
        manager.requestLocation()
    }
    
    func getLocationName() {
        guard let location = location else { return }

        GetLocationName().execute(location: location) { name in
            self.completion?(location, name)
        }
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        location = locations.first?.coordinate
    }
    
    func locationManager(_ manager: CLLocationManager,
                         didFailWithError error: Error) {
        print(error)
    }
    
    func locationManagerDidChangeAuthorization(_ manager: CLLocationManager) {
        manager.requestLocation()
    }
    
}
