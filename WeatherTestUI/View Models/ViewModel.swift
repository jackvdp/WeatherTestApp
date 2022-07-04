//
//  ViewModel.swift
//  WeatherTestUI
//
//  Created by Jack Vanderpump on 04/07/2022.
//

import Foundation

class ViewModel: ObservableObject {
    
    @Published var weather = [WeatherAtTime]()
    @Published var locationName: String = "London"
    
    init() {
        getWeather()
    }
    
    deinit {
        
    }
    
    func getWeather() {
        WeatherAPI().getForLocation(longtitude: 69.10254189, latitude: 23.33159104) { weather in
            
            guard let weather = weather else {
                return
            }
            
            if let times = weather.features.first?.properties.timeSeries {
                
                for time in times {
                    
                    if let hour = self.getHour(dateString: time.time) {
                        
                        self.weather.append(
                            WeatherAtTime(hour: hour,
                                          temperature: time.screenTemperature,
                                          realFeel: time.feelsLikeTemperature,
                                          weather: self.getWeatherImage(code: time.significantWeatherCode)))
                        
                    }
                }
            }
            
        }
    }
    
    private func getDate(dateString: String) -> Date? {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm'Z'"
        return dateFormatter.date(from: dateString)
    }
    
    private func getHour(dateString: String) -> Int? {
        if let date = getDate(dateString: dateString) {
            let calendar = Calendar.current
            let hour = calendar.component(.hour, from: date)
            return hour
        }
        return nil
    }
    
    func getWeatherImage(code: Int) -> String {
        
        print(code)
        
        switch code {
        case 0...1:
            return "sun.max"
        case 2...4:
            return "cloud.sun"
        case 5...6:
            return "cloud.fog"
        case 7...8:
            return "cloud"
        case 9...12:
            return "cloud.drizzle"
        case 13...15:
            return "cloud.rain"
        case 16...18:
            return "cloud.sleet"
        case 19...21:
            return "cloud.hail"
        case 22...27:
            return "cloud.snow"
        case 28...30:
            return "cloud.bolt"
        default:
            return "sun.min"
        }
        
    }
    
}

struct WeatherAtTime: Identifiable {
    var id = UUID()
    var hour: Int
    var temperature: Double
    var realFeel: Double
    var weather: String
}

