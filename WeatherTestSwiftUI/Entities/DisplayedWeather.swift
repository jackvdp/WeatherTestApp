//
//  DisplayedWeather.swift
//  WeatherTestUI
//
//  Created by Jack Vanderpump on 04/07/2022.
//

import Foundation

struct DisplayedHourlyWeather: Identifiable {
    var id = UUID()
    var hour: Int
    var temperature: Double
    var realFeel: Double
    var chanceOfRain: Int
    var windSpeed: Int
    var weather: String
}

struct DisplayedDailyWeather: Identifiable {
    var id = UUID()
    var day: String
    var maxTemp: Double
    var minTemp: Double
    var maxRealFeel: Double
    var minRealFeel: Double
    var chanceOfRain: Int
    var windSpeed: Int
    var weather: String
}
