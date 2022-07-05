//
//  ContentView.swift
//  WeatherTestUI
//
//  Created by Jack Vanderpump on 04/07/2022.
//

import SwiftUI
import CoreLocationUI

struct ContentView: View {
    
    @StateObject var viewModel = CurrentLocationWeatherViewModel()
    
    var body: some View {
        VStack {
            if let currentHourlyWeather = viewModel.currentHourlyWeather,
               let locationName = viewModel.locationName,
               let currentDailyWeather = viewModel.currentDailyWeather {
                WeatherView(
                    viewModel: viewModel,
                    currentHourlyWeather: currentHourlyWeather,
                    currentDailyWeather: currentDailyWeather,
                    upcomingWeather: viewModel.upcomingHourlyWeather,
                    locationName: locationName
                )
            } else {
                Text("Click to get weather for current location")
                    .fontWeight(.bold)
                LocationButton {
                    viewModel.requestLocation()
                }
                .background(Color.black)
                .clipShape(Capsule())
                .foregroundColor(.white)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

