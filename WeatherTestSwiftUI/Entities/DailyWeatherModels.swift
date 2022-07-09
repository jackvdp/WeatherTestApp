//
//  DailyWeatherModels.swift
//  WeatherTestSwiftUI
//
//  Created by Jack Vanderpump on 05/07/2022.
//

import Foundation

// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let weather = try? newJSONDecoder().decode(Weather.self, from: jsonData)

import Foundation

// MARK: - Weather
struct DailyWeather: Codable {
    let type: String
    let features: [Feature]
    let parameters: [[String: Parameter]]
    
    // MARK: - Feature
    struct Feature: Codable {
        let type: String
        let geometry: Geometry
        let properties: Properties
    }

    // MARK: - Geometry
    struct Geometry: Codable {
        let type: String
        let coordinates: [Double]
    }

    // MARK: - Properties
    struct Properties: Codable {
        let requestPointDistance: Double
        let modelRunDate: String
        let timeSeries: [TimeSery]
    }

    // MARK: - TimeSery
    struct TimeSery: Codable {
        let time: String
        let midnight10MWindSpeed: Double
        let midnight10MWindDirection: Int
        let midnight10MWindGust: Double
        let midnightVisibility: Int
        let midnightRelativeHumidity: Double
        let midnightMslp, nightSignificantWeatherCode: Int
        let nightMinScreenTemperature, nightUpperBoundMinTemp, nightLowerBoundMinTemp, nightMinFeelsLikeTemp: Double
        let nightUpperBoundMinFeelsLikeTemp, nightLowerBoundMinFeelsLikeTemp: Double
        let nightProbabilityOfPrecipitation, nightProbabilityOfSnow, nightProbabilityOfHeavySnow, nightProbabilityOfRain: Int
        let nightProbabilityOfHeavyRain, nightProbabilityOfHail, nightProbabilityOfSferics: Int
        let midday10MWindSpeed: Double?
        let midday10MWindDirection: Int?
        let midday10MWindGust: Double?
        let middayVisibility: Int?
        let middayRelativeHumidity: Double?
        let middayMslp, maxUvIndex, daySignificantWeatherCode: Int?
        let dayMaxScreenTemperature, dayUpperBoundMaxTemp, dayLowerBoundMaxTemp, dayMaxFeelsLikeTemp: Double?
        let dayUpperBoundMaxFeelsLikeTemp, dayLowerBoundMaxFeelsLikeTemp: Double?
        let dayProbabilityOfPrecipitation, dayProbabilityOfSnow, dayProbabilityOfHeavySnow, dayProbabilityOfRain: Int?
        let dayProbabilityOfHeavyRain, dayProbabilityOfHail, dayProbabilityOfSferics: Int?
    }

    // MARK: - Parameter
    struct Parameter: Codable {
        let type: TypeEnum
        let parameterDescription: String
        let unit: Unit

        enum CodingKeys: String, CodingKey {
            case type
            case parameterDescription = "description"
            case unit
        }
    }

    enum TypeEnum: String, Codable {
        case parameter = "Parameter"
    }

    // MARK: - Unit
    struct Unit: Codable {
        let label: String
        let symbol: Symbol
    }

    // MARK: - Symbol
    struct Symbol: Codable {
        let value: String
        let type: String
    }
}




