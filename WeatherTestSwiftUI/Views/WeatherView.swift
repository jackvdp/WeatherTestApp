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
    let upcomingWeather: [DisplayedHourlyWeather]
    let locationName: String
    
    var body: some View {
        CurrentWeatherView(location: locationName,
                           currentHourWeather: currentHourlyWeather,
                           currentDailyWeather: currentDailyWeather)
        List {
            ForEach(upcomingWeather) { weather in
                WeatherItemView(weather: weather)
            }
        }
        .listStyle(.plain)
        .refreshable {
            viewModel.getWeather()
        }
    }
}

struct WeatherView_Previews: PreviewProvider {
    static var previews: some View {
        WeatherView(
            viewModel: CurrentLocationWeatherViewModel(),
            currentHourlyWeather: Mocks.hourlyWeather,
            currentDailyWeather: Mocks.dailyWeather,
            upcomingWeather: Mocks.hourlyWeatherArray,
            locationName: "London")
    }
}
