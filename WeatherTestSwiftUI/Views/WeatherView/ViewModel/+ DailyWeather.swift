//
//  DailyWeather.swift
//  WeatherTestSwiftUI
//
//  Created by Jack Vanderpump on 05/07/2022.
//

import Foundation
import CoreLocation

extension WeatherViewModel {
    
    func getDailyWeather(_ location: CLLocationCoordinate2D) {
        forecastController.getDaily(longtitude: location.longitude, latitude: location.latitude) { weather in
            guard let weather = weather else { return }
            
            if let times = weather.features.first?.properties.timeSeries {
                self.upcomingDailyWeather = times.compactMap { self.convertDailyWeatherToDisplayedWeather($0) }
            }
        }
    }
    
    private func convertDailyWeatherToDisplayedWeather(_ time: DailyWeather.TimeSery) -> DisplayedDailyWeather? {
        if let day = self.getDay(dateString: time.time) {
            
            if let upperBoundTemp = time.dayUpperBoundMaxTemp,
               let upperBoundRealFeelTemp = time.dayUpperBoundMaxFeelsLikeTemp,
               let wind = time.midday10MWindSpeed,
               let rain = time.dayProbabilityOfRain {
                
                return DisplayedDailyWeather(
                    day: day,
                    maxTemp: upperBoundTemp,
                    minTemp: time.nightLowerBoundMinTemp,
                    maxRealFeel: upperBoundRealFeelTemp,
                    minRealFeel: time.nightLowerBoundMinFeelsLikeTemp,
                    chanceOfRain: rain,
                    windSpeed: Int(wind),
                    weather: getWeatherImage(code: time.daySignificantWeatherCode ?? 100)
                )
                
            }
        }
        return nil
    }
}
