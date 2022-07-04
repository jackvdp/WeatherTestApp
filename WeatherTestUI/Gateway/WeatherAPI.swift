//
//  WeatherAPI.swift
//  WeatherTestUI
//
//  Created by Jack Vanderpump on 04/07/2022.
//

import Foundation
import Alamofire
import SwiftyJSON

class WeatherAPI {
    
    func getForLocation(longtitude: Double, latitude: Double, completion: @escaping (Weather?) -> ()) {
        
        let url = "https://api-metoffice.apiconnect.ibmcloud.com/v0/forecasts/point/hourly?latitude=\(latitude)&longitude=\(longtitude)"
        
        let headers = HTTPHeaders([
            HTTPHeader(name: "X-IBM-Client-Id", value: "df54e0e2fde7346f66bb16575f1da693"),
            HTTPHeader(name: "X-IBM-Client-Secret", value: "849bbcf5388c78566f6dcc8b61b7d901"),
        ])
        
        AF.request(url, headers: headers).response { res in
            guard let data = res.data else { return }
            
            let decoder = JSONDecoder()
            
            let weatherModel = try? decoder.decode(Weather.self, from: data)
            
            completion(weatherModel)
        }
        
    }
    
}
