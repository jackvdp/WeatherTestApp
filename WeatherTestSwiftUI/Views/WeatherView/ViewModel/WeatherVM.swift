//
//  WeatherViewModel.swift
//  WeatherTestSwiftUI
//
//  Created by Jack Vanderpump on 05/07/2022.
//

import Foundation
import CoreLocation

class WeatherViewModel: NSObject, ObservableObject {
    var manager = CLLocationManager()
    var forecastController = ForecastController()
    @Published var selection: DailyHourly = .daily
    @Published var currentHourlyWeather: DisplayedHourlyWeather?
    @Published var currentDailyWeather: DisplayedDailyWeather?
    @Published var upcomingHourlyWeather = [DisplayedHourlyWeather]()
    @Published var upcomingDailyWeather = [DisplayedDailyWeather]()
    @Published var locationName: String?
    @Published var location: CLLocationCoordinate2D? {
        didSet {
            getWeather()
        }
    }
    
    func getWeather() {
        guard let location = location else { return }
        getLocationName(location)
        getHourlyWeather(location)
        getDailyWeather(location)
    }
    
    private func getLocationName(_ location: CLLocationCoordinate2D) {
        let geocoder = CLGeocoder()
        
        geocoder.reverseGeocodeLocation(CLLocation(latitude: location.latitude, longitude: location.longitude)) { placemarks, error in
            if let firstLocation = placemarks?[0] {
                if let name = firstLocation.name {
                    self.locationName = name
                }
            }
        }
    }
}

enum DailyHourly: String, CaseIterable, Identifiable {
    case daily = "Daily"
    case hourly = "Hourly"
    var id: Self { self }
}
