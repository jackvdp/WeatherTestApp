//
//  LockScreenWidgetView.swift
//  WeatherTestSwiftUI
//
//  Created by Jack Vanderpump on 28/10/2022.
//

import SwiftUI
import WidgetKit

struct LockScreenWidgetView: View {
    
    @StateObject var viewModel = LockScreenViewModel()
    
    var body: some View {
        if viewModel.fetchingData {
            fetchingView
                .onAppear(perform: viewModel.fetchCurrentWeather)
        } else {
            fetchedView
        }
    }
    
    var fetchingView: some View {
        Text("Loading...")
    }
    
    var fetchedView: some View {
        VStack(alignment: .leading) {
            currentWeather
            weatherStatus
            highLowWeather
        }
        .foregroundColor(.white)
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
    
    var currentWeather: some View {
        HStack {
            Image(systemName: viewModel.imageName)
            Text (viewModel.temperatureCurrent + "°")
        }
    }
    
    var weatherStatus: some View {
        Text(viewModel.weatherStatus)
    }
    
    var highLowWeather: some View {
        Text("H: \(viewModel.temperatureHigh)° L:\(viewModel.temperatureLow)°")
    }
}

struct LockScreenWidgetView_Previews: PreviewProvider {
    static var previews: some View {
        LockScreenWidgetView()
            .previewContext(WidgetPreviewContext(family: .accessoryRectangular))
    }
}



