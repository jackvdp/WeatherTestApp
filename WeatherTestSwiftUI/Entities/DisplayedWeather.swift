//
//  DisplayedWeather.swift
//  WeatherTestUI
//
//  Created by Jack Vanderpump on 04/07/2022.
//

import Foundation

struct DisplayedWeather: Identifiable {
    var id = UUID()
    var hour: Int
    var temperature: Double
    var realFeel: Double
    var chanceOfRain: Int
    var windSpeed: Int
    var weather: String
}

