//
//  WeatherItemView.swift
//  WeatherTestUI
//
//  Created by Jack Vanderpump on 04/07/2022.
//

import SwiftUI

struct WeatherItemView: View {
    
    let weather: WeatherAtTime
    
    var body: some View {
        HStack {
            Image(systemName: weather.weather)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .font(.body)
                .frame(width: 50, height: 50)
            VStack(alignment: .leading) {
                Text("Temp: \(Int(weather.temperature)) C")
                Text("Real Feel: \(Int(weather.realFeel)) C")
                
            }
            Spacer()
            VStack(alignment: .leading) {
                Text("@ \(weather.hour):00")
                    .font(.title2)
            }
        }
        .padding()
    }
}

struct WeatherItemView_Previews: PreviewProvider {
    static var previews: some View {
        WeatherItemView(weather: WeatherAtTime(hour: 13, temperature: 21, realFeel: 23, weather: "cloud"))
    }
}
