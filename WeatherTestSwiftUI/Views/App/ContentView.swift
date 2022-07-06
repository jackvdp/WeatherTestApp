//
//  ContentView.swift
//  WeatherTestSwiftUI
//
//  Created by Jack Vanderpump on 05/07/2022.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var locationsViewModel = LocationsViewModel()
    
    var body: some View {
        VStack {
            Label("Met Office", systemImage: "wind")
            TabView {
                CurrentLocationView()
                ForEach(locationsViewModel.locations, id: \.self) { location in
                    CustomLocation(viewModel: CustomLocationViewModel(location: location))
                }
                VideoView()
                LocationsView(locationsViewModel: locationsViewModel)
            }
            .tabViewStyle(.page(indexDisplayMode: .always))
            .indexViewStyle(.page(backgroundDisplayMode: .always))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
