//
//  HourlyWeather.swift
//  WeatherTestSwiftUI
//
//  Created by Jack Vanderpump on 05/07/2022.
//

import Foundation
import CoreLocation

extension CurrentLocationViewModel {
    
    func getHourlyWeather(_ location: CLLocationCoordinate2D) {
        forecastController.getHourly(longtitude: location.longitude, latitude: location.latitude) { weather in
            
            guard let weather = weather else { return }
            
            if let times = weather.features.first?.properties.timeSeries {
                
                var nextTimes = times
                guard !nextTimes.isEmpty else { return }
                
                let firstTime = nextTimes.removeFirst()
                self.currentHourlyWeather = self.convertHourlyWeatherToDisplayedWeather(firstTime)
                
                for time in nextTimes {
                    if let singleWeather = self.convertHourlyWeatherToDisplayedWeather(time) {
                        self.upcomingHourlyWeather.append(singleWeather)
                    }
                    
                }
            }
        }
    }
    
    private func convertHourlyWeatherToDisplayedWeather(_ time: HourlyWeather.TimeSery) -> DisplayedHourlyWeather? {
        if let hour = self.getHour(dateString: time.time) {
            
            return DisplayedHourlyWeather(
                hour: hour,
                temperature: time.screenTemperature,
                realFeel: time.feelsLikeTemperature,
                chanceOfRain: time.probOfPrecipitation,
                windSpeed: Int(time.windSpeed10M),
                weather: getWeatherImage(code: time.significantWeatherCode)
            )
            
        }
        return nil
    }
}
