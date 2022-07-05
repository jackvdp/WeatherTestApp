//
//  MockPreviewData.swift
//  WeatherTestSwiftUI
//
//  Created by Jack Vanderpump on 05/07/2022.
//

import Foundation


class Mocks {
    
    static let hourlyWeather = DisplayedHourlyWeather(hour: 13,
                                                     temperature: 21,
                                                     realFeel: 23,
                                                     chanceOfRain: 60,
                                                     windSpeed: 7,
                                                     weather: "cloud")
    
    static let hourlyWeatherArray = Array(repeating: hourlyWeather, count: 7)
    
    static let dailyWeather = DisplayedDailyWeather(day: "Tue", maxTemp: 21, minTemp: 19, maxRealFeel: 18, minRealFeel: 22, chanceOfRain: 60, windSpeed: 7, weather: "cloud")
    
    static let dailyWeatherArray = Array(repeating: dailyWeather, count: 7)
    
}
