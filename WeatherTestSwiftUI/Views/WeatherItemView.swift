//
//  WeatherItemView.swift
//  WeatherTestUI
//
//  Created by Jack Vanderpump on 04/07/2022.
//

import SwiftUI

struct WeatherItemView: View {
    
    let weather: DisplayedHourlyWeather
    
    var body: some View {
        HStack(spacing: 20) {
            Text(weather.hour.description)
                .opacity(0.6)
                .frame(width: 25)
                .font(.callout)
            Image(systemName: weather.weather)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 40, height: 40)
            VStack(alignment: .leading) {
                Text("Real Feel: \(Int(weather.realFeel)) C")
                if weather.chanceOfRain == 0 {
                    Text("Wind: \(Int(weather.windSpeed)) mph")
                } else {
                    Text("Rain: \(Int(weather.chanceOfRain))%")
                }
            }
            .opacity(0.6)
            .font(.callout)
            Spacer()
            Text("\(Int(weather.temperature)) C")
                .font(.title)
        }
        .padding()
    }
}

struct WeatherItemView_Previews: PreviewProvider {
    static var previews: some View {
        WeatherItemView(weather: Mocks.hourlyWeather)
    }
}
