//
//  ViewModel.swift
//  WeatherTestUI
//
//  Created by Jack Vanderpump on 04/07/2022.
//

import Foundation
import CoreLocation

class CurrentLocationWeatherViewModel: NSObject, ObservableObject {
    
    let manager = CLLocationManager()
    let forecastController = ForecastController()
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
    
    override init() {
        super.init()
        manager.delegate = self
        requestLocation()
    }
    
    func getWeather() {
        guard let location = location else { return }
        resetWeather()
        getLocationName(location)
        getHourlyWeather(location)
        getDailyWeather(location)
    }
    
    private func resetWeather() {
        currentHourlyWeather = nil
        upcomingHourlyWeather = []
        upcomingDailyWeather = []
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
