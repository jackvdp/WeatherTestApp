//
//  CurrentWeatherView.swift
//  WeatherTestUI
//
//  Created by Jack Vanderpump on 04/07/2022.
//

import SwiftUI

struct CurrentWeatherView: View {
    let location: String
    let weather: DisplayedHourlyWeather
    
    var body: some View {
        VStack {
            Text(location)
                .font(.largeTitle)
                .fontWeight(.thin)
            Image(systemName: weather.weather)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .font(.body)
                .frame(width: 120, height: 80)
            Text("\(Int(weather.temperature)) C")
                .font(.largeTitle)
        }
        .padding()
    }
}

struct CurrentWeatherView_Previews: PreviewProvider {
    static var previews: some View {
        CurrentWeatherView(location: "London",
                           weather: DisplayedHourlyWeather(hour: 13, temperature: 21, realFeel: 23, chanceOfRain: 60, windSpeed: 7, weather: "cloud"))
    }
}
