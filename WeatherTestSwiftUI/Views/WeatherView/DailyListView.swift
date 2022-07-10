//
//  DailyListView.swift
//  WeatherTestSwiftUI
//
//  Created by Jack Vanderpump on 05/07/2022.
//

import SwiftUI

struct DailyListView: View {
    @ObservedObject var viewModel: WeatherViewModel
    let dailyWeather: [DisplayedDailyWeather]
    
    var body: some View {
        List {
            ForEach(1..<dailyWeather.count, id: \.self) { i in
                DailyItemView(weather: dailyWeather[i])
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
        DailyListView(viewModel: WeatherViewModel(), dailyWeather: Mocks.dailyWeatherArray)
    }
}
