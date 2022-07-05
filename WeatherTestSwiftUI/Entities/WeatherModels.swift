//
//  WeatherModels.swift
//  WeatherTestUI
//
//  Created by Jack Vanderpump on 04/07/2022.
//

import Foundation

struct Weather: Codable {
    let type: String
    let features: [Feature]
    let parameters: [[String: Parameter]]
}

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
    let screenTemperature, screenDewPointTemperature, feelsLikeTemperature, windSpeed10M: Double
    let windDirectionFrom10M: Int
    let windGustSpeed10M: Double
    let visibility: Int
    let screenRelativeHumidity: Double
    let mslp, uvIndex, significantWeatherCode: Int
    let precipitationRate: Double
    let probOfPrecipitation: Int

    enum CodingKeys: String, CodingKey {
        case time, screenTemperature, screenDewPointTemperature, feelsLikeTemperature
        case windSpeed10M = "windSpeed10m"
        case windDirectionFrom10M = "windDirectionFrom10m"
        case windGustSpeed10M = "windGustSpeed10m"
        case visibility, screenRelativeHumidity, mslp, uvIndex, significantWeatherCode, precipitationRate, probOfPrecipitation
    }
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
