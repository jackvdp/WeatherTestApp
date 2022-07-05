//
//  GetDailyForecats.swift
//  WeatherTestUI
//
//  Created by Jack Vanderpump on 05/07/2022.
//

import Foundation

class GetDailyFoecasts {
    
    func execute(longtitude: Double, latitude: Double, completion: @escaping (Weather?) -> ()) {
        HourlyForecatsGateway().getForLocation(longtitude: longtitude, latitude: latitude, completion: completion)
    }
    
}
