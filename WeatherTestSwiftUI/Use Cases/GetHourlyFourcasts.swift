//
//  GetHourlyFourcasts.swift
//  WeatherTestUI
//
//  Created by Jack Vanderpump on 05/07/2022.
//

import Foundation


class GetHourlyFoecasts {
    
    func execute(longtitude: Double, latitude: Double, completion: @escaping (Weather?, Error?) -> ()) {
        HourlyForecatsGateway().getForLocation(longtitude: longtitude, latitude: latitude) { code, weather in
            if code == 200 {
                completion(weather, nil)
            } else {
                print("\(code), Error")
                completion(weather, NSError(domain: "Error", code: code))
            }
        }
    }
    
}
