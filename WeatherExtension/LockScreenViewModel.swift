//
//  LockScreenViewModel.swift
//  WeatherTestSwiftUI
//
//  Created by Jack Vanderpump on 28/10/2022.
//

import Foundation
import CoreLocation

class LockScreenViewModel: ObservableObject {
    let forecastController = ForecastController()
    var coordinates = CLLocationCoordinate2D(latitude: 51.5072,
                                             longitude: 0.1276)
    
    @Published var fetchingData = true
    
    @Published var imageName: String = ""
    @Published var weatherStatus: String = "Cloudy"
    @Published var temperatureCurrent: String = "--"
    @Published var temperatureHigh: String = "--"
    @Published var temperatureLow: String = "--"
    
    func fetchCurrentWeather() {
        fetchingData = true
        forecastController.getHourly(longtitude: coordinates.longitude,
                                     latitude: coordinates.latitude) { [weak self] weather in
            self?.fetchingData = false
            
            guard let self,
                  let currentWeather = weather?.features.first?.properties.timeSeries.first else { return }
            
            self.temperatureCurrent = currentWeather.screenTemperature.description
            self.temperatureLow = currentWeather.screenTemperature.description
            self.temperatureHigh = currentWeather.screenTemperature.description
            self.imageName = WeatherCode.getImage(code: currentWeather.significantWeatherCode)
            self.weatherStatus = WeatherCode.getLabel(code: currentWeather.significantWeatherCode)
        }
    }
}
