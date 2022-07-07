//
//  WeatherTestUIApp.swift
//  WeatherTestUI
//
//  Created by Jack Vanderpump on 04/07/2022.
//

import SwiftUI

@main
struct WeatherTestSwiftUIApp: App {
    
    @StateObject var locationsManager = LocationsManager()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(locationsManager)
        }
    }
}
