//
//  GetDailyForecats.swift
//  WeatherTestUI
//
//  Created by Jack Vanderpump on 05/07/2022.
//

import Foundation

class GetDailyFoecasts {
    
    func execute(longtitude: Double, latitude: Double, completion: @escaping (DailyWeather?, Error?) -> ()) {
        DailyForecatsGateway().getForLocation(longtitude: longtitude, latitude: latitude) { code, weather in
            
            if code == 200 {
                completion(weather, nil)
            } else {
                print("\(code), Error")
                completion(weather, NSError(domain: "Error", code: code))
            }
            
        }
    }
    
}
