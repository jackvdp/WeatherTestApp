//
//  DailyWeatherModels.swift
//  WeatherTestSwiftUI
//
//  Created by Jack Vanderpump on 05/07/2022.
//

import Foundation

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
        let midday10MWindSpeed, midnight10MWindSpeed: Double
        let midday10MWindDirection, midnight10MWindDirection: Int
        let midday10MWindGust, midnight10MWindGust: Double
        let middayVisibility, midnightVisibility: Int
        let middayRelativeHumidity, midnightRelativeHumidity: Double
        let middayMslp, midnightMslp, nightSignificantWeatherCode: Int
        let dayMaxScreenTemperature, nightMinScreenTemperature, dayUpperBoundMaxTemp, nightUpperBoundMinTemp: Double
        let dayLowerBoundMaxTemp, nightLowerBoundMinTemp, nightMinFeelsLikeTemp, dayUpperBoundMaxFeelsLikeTemp: Double
        let nightUpperBoundMinFeelsLikeTemp, dayLowerBoundMaxFeelsLikeTemp, nightLowerBoundMinFeelsLikeTemp: Double
        let nightProbabilityOfPrecipitation, nightProbabilityOfSnow, nightProbabilityOfHeavySnow, nightProbabilityOfRain: Int
        let nightProbabilityOfHeavyRain, nightProbabilityOfHail, nightProbabilityOfSferics: Int
        let maxUvIndex, daySignificantWeatherCode: Int?
        let dayMaxFeelsLikeTemp: Double?
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


