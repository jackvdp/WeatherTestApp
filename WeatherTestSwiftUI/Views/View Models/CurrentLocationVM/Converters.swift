//
//  Helpers.swift
//  WeatherTestSwiftUI
//
//  Created by Jack Vanderpump on 05/07/2022.
//

import Foundation

extension CurrentLocationWeatherViewModel {
    
    func getDay(dateString: String) -> String? {
        if let date = getDate(dateString: dateString) {
            let dateFormatter = DateFormatter()
            dateFormatter.dateFormat = "EE"
            let dayInWeek = dateFormatter.string(from: date)
            return dayInWeek
        }
        return nil
    }
    
    func getHour(dateString: String) -> Int? {
        if let date = getDate(dateString: dateString) {
            let calendar = Calendar.current
            let hour = calendar.component(.hour, from: date)
            return hour
        }
        return nil
    }
    
    private func getDate(dateString: String) -> Date? {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm'Z'"
        dateFormatter.timeZone = .init(secondsFromGMT: 0)
        return dateFormatter.date(from: dateString)
    }
    
    func getWeatherImage(code: Int) -> String {
        
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
            return "questionmark"
        }
        
    }
}
