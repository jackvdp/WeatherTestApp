//
//  CustomLocation.swift
//  WeatherTestSwiftUI
//
//  Created by Jack Vanderpump on 05/07/2022.
//

import SwiftUI

struct CustomLocationView: View {
    
    @StateObject var viewModel: CustomLocationViewModel
    
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
                ProgressView()
                    .progressViewStyle(.circular)
                    .padding()
            }
        }
    }
}

struct CustomLocation_Previews: PreviewProvider {
    static var previews: some View {
        CustomLocationView(viewModel: CustomLocationViewModel(whereFor: "Cambridge"))
    }
}
