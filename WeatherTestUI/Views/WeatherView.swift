//
//  WeatherView.swift
//  WeatherTestUI
//
//  Created by Jack Vanderpump on 04/07/2022.
//

import Foundation
import SwiftUI

struct WeatherView: View {
    
    @ObservedObject var viewModel: ViewModel
    
    var body: some View {
        VStack {
            Text(viewModel.locationName)
            List {
                ForEach(viewModel.weather) { weather in
                    WeatherItemView(weather: weather)
                }
            }
            .refreshable {
                viewModel.getWeather()
            }
        }
    }
}

