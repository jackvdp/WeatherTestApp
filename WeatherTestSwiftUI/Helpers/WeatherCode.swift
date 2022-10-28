//
//  WeatherImage.swift
//  WeatherTestSwiftUI
//
//  Created by Jack Vanderpump on 28/10/2022.
//

import Foundation

struct WeatherCode {
    
    static func getImage(code: Int) -> String {
        
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
    
    static func getLabel(code: Int) -> String {
        
        switch code {
        case 0...1:
            return "Sunny"
        case 2...4:
            return "Sun/Cloud"
        case 5...6:
            return "Fog"
        case 7...8:
            return "Cloudy"
        case 9...12:
            return "Drizzle"
        case 13...15:
            return "Rain"
        case 16...18:
            return "Sleet"
        case 19...21:
            return "Hail"
        case 22...27:
            return "Snow"
        case 28...30:
            return "Lightning"
        default:
            return "Who knows"
        }
        
    }
    
}
