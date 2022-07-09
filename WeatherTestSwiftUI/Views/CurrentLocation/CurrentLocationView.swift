//
//  ContentView.swift
//  WeatherTestUI
//
//  Created by Jack Vanderpump on 04/07/2022.
//

import SwiftUI
import CoreLocationUI

struct CurrentLocationView: View {
    
    @StateObject var viewModel = CurrentLocationViewModel()
    
    var body: some View {
        VStack {
            if let currentHourlyWeather = viewModel.currentHourlyWeather,
               let locationName = viewModel.locationName,
               let currentDailyWeather = viewModel.currentDailyWeather {
                WeatherView(
                    viewModel: viewModel,
                    currentHourlyWeather: currentHourlyWeather,
                    currentDailyWeather: currentDailyWeather,
                    upcomingHourlyWeather: viewModel.upcomingHourlyWeather,
                    upcomingDailyWeather: viewModel.upcomingDailyWeather,
                    locationName: locationName
                )
            } else {
                Text("Click to get weather for current location")
                    .fontWeight(.bold)
                LocationButton {
                    viewModel.requestLocation()
                }
                .id("LocationButton")
                .background(Color.black)
                .clipShape(Capsule())
                .foregroundColor(.white)
            }
        }
    }
}

struct CurrentLocationView_Previews: PreviewProvider {
    static var previews: some View {
        CurrentLocationView()
    }
}

