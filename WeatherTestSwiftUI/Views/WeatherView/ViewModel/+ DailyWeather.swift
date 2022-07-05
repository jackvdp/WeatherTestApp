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
                
                var nextTimes = times
                guard !nextTimes.isEmpty else { return }
                self.upcomingDailyWeather = []
                
                let firstTime = nextTimes.removeFirst()
                self.currentDailyWeather = self.convertDailyWeatherToDisplayedWeather(firstTime)

                for time in nextTimes {
                    if let singleWeather = self.convertDailyWeatherToDisplayedWeather(time) {
                        self.upcomingDailyWeather.append(singleWeather)
                    }
                    
                }
            }
        }
    }
    
    private func convertDailyWeatherToDisplayedWeather(_ time: DailyWeather.TimeSery) -> DisplayedDailyWeather? {
        if let day = self.getDay(dateString: time.time) {
            return DisplayedDailyWeather(
                day: day,
                maxTemp: time.dayUpperBoundMaxTemp,
                minTemp: time.nightLowerBoundMinTemp,
                maxRealFeel: time.dayUpperBoundMaxFeelsLikeTemp,
                minRealFeel: time.nightLowerBoundMinFeelsLikeTemp,
                chanceOfRain: time.dayProbabilityOfRain ?? 0,
                windSpeed: Int(time.midday10MWindSpeed),
                weather: getWeatherImage(code: time.daySignificantWeatherCode ?? 100)
            )
            
        }
        return nil
    }
}
