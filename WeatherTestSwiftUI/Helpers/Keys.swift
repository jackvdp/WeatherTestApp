//
//  Keys.swift
//  WeatherTestUI
//
//  Created by Jack Vanderpump on 05/07/2022.
//

import Foundation


class APIKeys {
    
    static let clientIDHeader = "X-IBM-Client-Id"
    static let clientSecretHeader = "X-IBM-Client-Secret"
    
//    Set clientID and clientSecret as environment variables
//    Set Envirionment Variables at Prodcut > Scheme > Edit Scheme > Run > Environment Variables
//    Make sure to match strings as below
    static let clientID = ProcessInfo.processInfo.environment["clientID"]!
    static let clientSecret = ProcessInfo.processInfo.environment["clientSecret"]!
}
