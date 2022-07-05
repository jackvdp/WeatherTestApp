//
//  ForecastController.swift
//  WeatherTestUI
//
//  Created by Jack Vanderpump on 05/07/2022.
//

import Foundation

class ForecastController {
    
    func getHourlyForecasts(longtitude: Double, latitude: Double, completion: @escaping (Weather?) -> ()) {
        GetHourlyFoecasts().execute(longtitude: longtitude, latitude: latitude, completion: completion)
    }
    
    func getDailyForecasts(longtitude: Double, latitude: Double, completion: @escaping (Weather?) -> ()) {
        
    }
    
}
