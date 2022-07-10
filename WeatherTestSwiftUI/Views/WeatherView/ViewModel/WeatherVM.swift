//
//  WeatherViewModel.swift
//  WeatherTestSwiftUI
//
//  Created by Jack Vanderpump on 05/07/2022.
//

import Foundation
import CoreLocation

class WeatherViewModel: ObservableObject {
    
    let forecastController = ForecastController()
    let locationController = LocationController()
    @Published var selection: DailyHourly = .daily
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
        getHourlyWeather(location)
        getDailyWeather(location)
    }
    
}

enum DailyHourly: String, CaseIterable, Identifiable {
    case daily = "Daily"
    case hourly = "Hourly"
    var id: Self { self }
}
