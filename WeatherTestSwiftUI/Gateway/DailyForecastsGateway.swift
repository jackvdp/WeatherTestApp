//
//  DailyForecastsGateway.swift
//  WeatherTestUI
//
//  Created by Jack Vanderpump on 05/07/2022.
//

import Foundation
import Alamofire


class DailyForecatsGateway {
    
    func getForLocation(longtitude: Double, latitude: Double, completion: @escaping (Weather?) -> ()) {
        
        let url = "https://api-metoffice.apiconnect.ibmcloud.com/v0/forecasts/point/daily?latitude=\(latitude)&longitude=\(longtitude)"
        
        let headers = HTTPHeaders([
            HTTPHeader(name: APIKeys.clientIDHeader, value: APIKeys.clientID),
            HTTPHeader(name: APIKeys.clientSecretHeader, value: APIKeys.clientSecret),
        ])
        
        AF.request(url, headers: headers).response { res in
            guard let data = res.data else { return }
            
            let decoder = JSONDecoder()
            
            let weatherModel = try? decoder.decode(Weather.self, from: data)
            
            completion(weatherModel)
        }
        
    }
    
}
