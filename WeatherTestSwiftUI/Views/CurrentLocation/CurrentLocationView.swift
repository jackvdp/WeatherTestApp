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
            if let dayWeather = viewModel.upcomingDailyWeather.first,
               let hourWeather = viewModel.upcomingHourlyWeather.first {
                WeatherView(
                    viewModel: viewModel,
                    currentHourlyWeather: hourWeather,
                    currentDailyWeather: dayWeather,
                    upcomingHourlyWeather: viewModel.upcomingHourlyWeather,
                    upcomingDailyWeather: viewModel.upcomingDailyWeather,
                    locationName: viewModel.locationName ?? "N/A"
                )
            } else {
                Text("Click to get weather for current location")
                    .fontWeight(.bold)
                Button("Current Location") {
                    viewModel.requestLocation()
                }
                .padding()
                .accessibilityIdentifier("LocationButton")
                .foregroundColor(.white)
                .background(Color.blue)
                .clipShape(Capsule())
            }
        }
        .onAppear() {
            viewModel.requestLocation()
        }
    }
}

struct CurrentLocationView_Previews: PreviewProvider {
    static var previews: some View {
        CurrentLocationView()
    }
}

