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
    
    var body: some View {
        CurrentWeatherView(location: viewModel.locationName,
                           weather: currentWeather)
        List {
            ForEach(viewModel.weather) { weather in
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
        WeatherView(viewModel: WeatherViewModel(), currentWeather: DisplayedWeather(hour: 13, temperature: 21, realFeel: 23, weather: "cloud"))
    }
}
