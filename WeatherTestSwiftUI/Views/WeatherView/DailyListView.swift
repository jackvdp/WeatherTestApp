//
//  DailyListView.swift
//  WeatherTestSwiftUI
//
//  Created by Jack Vanderpump on 05/07/2022.
//

import SwiftUI

struct DailyListView<T: WeatherViewModel>: View {
    @ObservedObject var viewModel: T
    let dailyWeather: [DisplayedDailyWeather]
    
    var body: some View {
        List {
            ForEach(dailyWeather) { weather in
                DailyItemView(weather: weather)
            }
        }
        .listStyle(.plain)
        .refreshable {
            viewModel.getWeather()
        }
    }
}

struct DailyListView_Previews: PreviewProvider {
    static var previews: some View {
        DailyListView(viewModel: CurrentLocationViewModel(), dailyWeather: Mocks.dailyWeatherArray)
    }
}
