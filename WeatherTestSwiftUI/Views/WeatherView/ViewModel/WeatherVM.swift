//
//  WeatherViewModel.swift
//  WeatherTestSwiftUI
//
//  Created by Jack Vanderpump on 05/07/2022.
//

import Foundation

protocol WeatherViewModel: ObservableObject {
    
    var selection: DailyHourly { get set}
    var currentHourlyWeather: DisplayedHourlyWeather? { get set}
    var currentDailyWeather: DisplayedDailyWeather? { get set}
    var upcomingHourlyWeather: [DisplayedHourlyWeather] { get set}
    var upcomingDailyWeather: [DisplayedDailyWeather] { get set}
    
    func getWeather()
}
