//
//  LocationsView.swift
//  WeatherTestSwiftUI
//
//  Created by Jack Vanderpump on 05/07/2022.
//

import SwiftUI

struct LocationsView: View {
    
    @ObservedObject var locationsManager: LocationsManager
    @State private var textEntry = String()
    @State private var selecteditem: String?
    
    var body: some View {
        VStack {
            TextField("Enter location...", text: $textEntry)
                .textFieldStyle(.roundedBorder)
                .padding()
            Button("Add") {
                locationsManager.addLocation(textEntry)
                textEntry = String()
            }
            .buttonStyle(.borderedProminent)
            List {
                ForEach(locationsManager.locations, id: \.self) { location in
                    HStack {
                        Text(location)
                        Spacer()
                        Image(systemName: "x.circle")
                            .opacity(0.6)
                            .onTapGesture {
                                locationsManager.removeLocation(location)
                            }
                    }
                }
                
            }
            .listStyle(.plain)
        }
    }
    
}

struct LocationsView_Previews: PreviewProvider {
    static var viewModel: LocationsManager {
        let vm = LocationsManager()
        vm.locations = ["Cambridge", "London", "New York"]
        return vm
    }
    
    static var previews: some View {
        LocationsView(locationsManager: viewModel)
    }
}
