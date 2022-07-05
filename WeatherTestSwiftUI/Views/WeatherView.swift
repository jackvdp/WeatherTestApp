//
//  WeatherView.swift
//  WeatherTestUI
//
//  Created by Jack Vanderpump on 04/07/2022.
//

import Foundation
import SwiftUI
struct WeatherView: View {
    
    @ObservedObject var viewModel: CurrentLocationWeatherViewModel
    let currentHourlyWeather: DisplayedHourlyWeather
    let currentDailyWeather: DisplayedDailyWeather
    let upcomingHourlyWeather: [DisplayedHourlyWeather]
    let upcomingDailyWeather: [DisplayedDailyWeather]
    let locationName: String
    
    var body: some View {
        CurrentWeatherView(location: locationName,
                           currentHourWeather: currentHourlyWeather,
                           currentDailyWeather: currentDailyWeather)
        SegmentedPicker(selection: $viewModel.selection)
        switch viewModel.selection {
        case .daily:
            DailyListView(viewModel: viewModel,
                           dailyWeather: upcomingDailyWeather)
        case .hourly:
            HourlyListView(viewModel: viewModel,
                           hourlyWeather: upcomingHourlyWeather)
        }
        
    }
}

struct WeatherView_Previews: PreviewProvider {
    static var previews: some View {
        WeatherView(
            viewModel: CurrentLocationWeatherViewModel(),
            currentHourlyWeather: Mocks.hourlyWeather,
            currentDailyWeather: Mocks.dailyWeather,
            upcomingHourlyWeather: Mocks.hourlyWeatherArray,
            upcomingDailyWeather: Mocks.dailyWeatherArray,
            locationName: "London")
    }
}
