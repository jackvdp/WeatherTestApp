//
//  WeatherAPI.swift
//  WeatherTestUI
//
//  Created by Jack Vanderpump on 04/07/2022.
//

import Foundation
import Alamofire

class HourlyForecatsGateway {
    
    func getForLocation(longtitude: Double, latitude: Double, completion: @escaping (Int, HourlyWeather?) -> ()) {
        
        let url = "https://api-metoffice.apiconnect.ibmcloud.com/v0/forecasts/point/hourly?latitude=\(latitude)&longitude=\(longtitude)"
        
        let headers = HTTPHeaders([
            HTTPHeader(name: APIKeys.clientIDHeader, value: APIKeys.clientID),
            HTTPHeader(name: APIKeys.clientSecretHeader, value: APIKeys.clientSecret),
        ])
        
        AF.request(url, headers: headers).response { res in
            guard let data = res.data,
            let code = res.response?.statusCode else {
                completion(404, nil)
                return
                
            }
            
            let weatherModel = self.decodeData(data)
            
            completion(code, weatherModel)
        }
        
    }
    
    func decodeData(_ data: Data) -> HourlyWeather? {
        let decoder = JSONDecoder()
        let weatherModel = try? decoder.decode(HourlyWeather.self, from: data)
        return weatherModel
    }
    
}
