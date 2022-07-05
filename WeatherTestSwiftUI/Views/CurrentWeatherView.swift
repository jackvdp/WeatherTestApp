//
//  CurrentWeatherView.swift
//  WeatherTestUI
//
//  Created by Jack Vanderpump on 04/07/2022.
//

import SwiftUI

struct CurrentWeatherView: View {
    let location: String
    let currentHourWeather: DisplayedHourlyWeather
    let currentDailyWeather: DisplayedDailyWeather
    
    var body: some View {
        VStack {
            Text(location)
                .font(.largeTitle)
                .fontWeight(.thin)
            Image(systemName: currentHourWeather.weather)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .font(.body)
                .frame(width: 120, height: 80)
            HStack(spacing: 40) {
                Text("L: \(Int(currentDailyWeather.minTemp)) C")
                    .opacity(0.6)
                Text("\(Int(currentHourWeather.temperature)) C")
                    .font(.largeTitle)
                Text("H: \(Int(currentDailyWeather.maxTemp)) C")
                    .opacity(0.6)
            }
        }
        .padding()
    }
}

struct CurrentWeatherView_Previews: PreviewProvider {
    static var previews: some View {
        CurrentWeatherView(location: "London",
                           currentHourWeather: Mocks.hourlyWeather,
                           currentDailyWeather: Mocks.dailyWeather)
    }
}
