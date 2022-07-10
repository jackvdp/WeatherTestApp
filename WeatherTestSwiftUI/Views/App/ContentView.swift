//
//  ContentView.swift
//  WeatherTestSwiftUI
//
//  Created by Jack Vanderpump on 05/07/2022.
//

import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject var locationsManager: LocationsManager
    
    var body: some View {
        VStack {
            Label("Met Office", systemImage: "wind")
            TabView {
                CurrentLocationView()
                VideoView()
                LocationsView(locationsManager: locationsManager)
                ForEach(locationsManager.locations,  id: \.self) { location in
                    CustomLocationView(viewModel: CustomLocationViewModel(whereFor: location))
                }
            }
            .tabViewStyle(.page(indexDisplayMode: .always))
            .indexViewStyle(.page(backgroundDisplayMode: .always))
        }
        .onAppear() {
            changeIndicators()
        }
    }
    
    func changeIndicators() {
        let indicators = UIPageControl.appearance()
        let locImage = UIImage(systemName: "location.fill")
        let vidImage = UIImage(systemName: "video.fill")
        let mapImage = UIImage(systemName: "map.fill")
        indicators.setIndicatorImage(locImage, forPage: 0)
        indicators.setIndicatorImage(vidImage, forPage: 1)
        indicators.setIndicatorImage(mapImage, forPage: 2)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(LocationsManager())
    }
}
