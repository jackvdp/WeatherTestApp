//
//  WeatherView.swift
//  WeatherTestUI
//
//  Created by Jack Vanderpump on 04/07/2022.
//

import Foundation
import SwiftUI

struct WeatherView: View {
    
    @ObservedObject var viewModel: WeatherViewModel
    let currentHourlyWeather: DisplayedHourlyWeather
    let currentDailyWeather: DisplayedDailyWeather
    let upcomingHourlyWeather: [DisplayedHourlyWeather]
    let upcomingDailyWeather: [DisplayedDailyWeather]
    let locationName: String
    
    var body: some View {
        CurrentWeatherView(location: locationName,
                           currentHourWeather: currentHourlyWeather,
                           currentDailyWeather: currentDailyWeather)
        .accessibilityIdentifier("weatherView_\(locationName)")
        SegmentedPicker(selection: $viewModel.selection)
            .accessibilityIdentifier("segmentPicker")
        switch viewModel.selection {
        case .daily:
            DailyListView(viewModel: viewModel,
                           dailyWeather: upcomingDailyWeather)
            .accessibilityIdentifier("dailyWeather")
        case .hourly:
            HourlyListView(viewModel: viewModel,
                           hourlyWeather: upcomingHourlyWeather)
            .accessibilityIdentifier("hourlyWeather")
        }
        
    }
}

struct WeatherView_Previews: PreviewProvider {
    static var previews: some View {
        WeatherView(
            viewModel: WeatherViewModel(),
            currentHourlyWeather: Mocks.hourlyWeather,
            currentDailyWeather: Mocks.dailyWeather,
            upcomingHourlyWeather: Mocks.hourlyWeatherArray,
            upcomingDailyWeather: Mocks.dailyWeatherArray,
            locationName: "London")
    }
}
