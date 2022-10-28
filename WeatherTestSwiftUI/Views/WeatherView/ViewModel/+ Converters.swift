//
//  Helpers.swift
//  WeatherTestSwiftUI
//
//  Created by Jack Vanderpump on 05/07/2022.
//

import Foundation

extension WeatherViewModel {
    
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
        return WeatherCode.getImage(code: code)
    }
    
}
