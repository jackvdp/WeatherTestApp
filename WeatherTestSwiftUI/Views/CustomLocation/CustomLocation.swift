//
//  CustomLocation.swift
//  WeatherTestSwiftUI
//
//  Created by Jack Vanderpump on 05/07/2022.
//

import SwiftUI

struct CustomLocation: View {
    
    @StateObject var viewModel: CustomLocationViewModel
    
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
                ProgressView()
                    .progressViewStyle(.circular)
                    .padding()
            }
        }
    }
}

struct CustomLocation_Previews: PreviewProvider {
    static var previews: some View {
        CustomLocation(viewModel: CustomLocationViewModel(whereFor: "Cambridge"))
    }
}
