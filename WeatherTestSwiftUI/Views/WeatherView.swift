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
    let currentWeather: DisplayedWeather
    let upcomingWeather: [DisplayedWeather]
    let locationName: String
    
    var body: some View {
        CurrentWeatherView(location: locationName,
                           weather: currentWeather)
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
            viewModel: WeatherViewModel(),
            currentWeather: DisplayedWeather(
                hour: 13,
                temperature: 21,
                realFeel: 23,
                chanceOfRain: 60,
                windSpeed: 7,
                weather: "cloud"),
            upcomingWeather: [
                DisplayedWeather(
                    hour: 13,
                    temperature: 21,
                    realFeel: 23,
                    chanceOfRain: 60,
                    windSpeed: 7,
                    weather: "cloud"),
                DisplayedWeather(
                    hour: 13,
                    temperature: 21,
                    realFeel: 23,
                    chanceOfRain: 60,
                    windSpeed: 7,
                    weather: "cloud"),
                DisplayedWeather(
                    hour: 13,
                    temperature: 21,
                    realFeel: 23,
                    chanceOfRain: 60,
                    windSpeed: 7,
                    weather: "cloud")
            ],
            locationName: "London")
    }
}
