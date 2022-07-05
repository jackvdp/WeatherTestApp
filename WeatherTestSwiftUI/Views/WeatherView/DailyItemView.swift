//
//  DailyWeatherItemView.swift
//  WeatherTestSwiftUI
//
//  Created by Jack Vanderpump on 05/07/2022.
//

import SwiftUI

struct DailyItemView: View {
    let weather: DisplayedDailyWeather
    
    var body: some View {
        HStack(spacing: 20) {
            Text(weather.day)
                .opacity(0.6)
                .frame(width: 40)
            Image(systemName: weather.weather)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 30, height: 30)
            Spacer()
            Text("\(Int(weather.minTemp)) C")
                .opacity(0.6)
            Text("\(Int(weather.maxTemp)) C")
        }
        .padding(.vertical)
    }
}

struct DailyWeatherItemView_Previews: PreviewProvider {
    static var previews: some View {
        DailyItemView(weather: Mocks.dailyWeather)
    }
}
