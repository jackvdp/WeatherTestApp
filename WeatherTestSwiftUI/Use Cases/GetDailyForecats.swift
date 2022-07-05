//
//  GetDailyForecats.swift
//  WeatherTestUI
//
//  Created by Jack Vanderpump on 05/07/2022.
//

import Foundation

class GetDailyFoecasts {
    
    func execute(longtitude: Double, latitude: Double, completion: @escaping (Weather?) -> ()) {
        DailyForecatsGateway().getForLocation(longtitude: longtitude, latitude: latitude) { code, weather in
            
            if code == 200 {
                completion(weather)
            } else {
                print("\(code), Error")
                completion(nil)
            }
            
        }
    }
    
}
