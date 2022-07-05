//
//  WeatherListView.swift
//  WeatherTestSwiftUI
//
//  Created by Jack Vanderpump on 05/07/2022.
//

import SwiftUI

struct HourlyListView: View {
    
    @ObservedObject var viewModel: WeatherViewModel
    let hourlyWeather: [DisplayedHourlyWeather]
    
    var body: some View {
        List {
            ForEach(hourlyWeather) { weather in
                HourlyItemView(weather: weather)
            }
        }
        .listStyle(.plain)
        .refreshable {
            viewModel.getWeather()
        }
    }
}

struct WeatherListView_Previews: PreviewProvider {
    static var previews: some View {
        HourlyListView(viewModel: CurrentLocationViewModel(), hourlyWeather: Mocks.hourlyWeatherArray)
    }
}
