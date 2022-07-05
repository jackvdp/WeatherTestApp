//
//  ForecastController.swift
//  WeatherTestUI
//
//  Created by Jack Vanderpump on 05/07/2022.
//

import Foundation

class ForecastController {
    
    func getHourly(longtitude: Double, latitude: Double, completion: @escaping (Weather?) -> ()) {
        GetHourlyFoecasts().execute(longtitude: longtitude, latitude: latitude) { weather, error in
            completion(weather)
        }
    }
    
    func getDaily(longtitude: Double, latitude: Double, completion: @escaping (Weather?) -> ()) {
        GetDailyFoecasts().execute(longtitude: longtitude, latitude: latitude, completion: completion)
    }
    
}
