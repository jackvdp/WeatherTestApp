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
        VStack(alignment: .leading) {
            VStack(alignment: .leading, spacing: 0) {
                Text("Your Locations")
                    .font(.title)
                    .fontWeight(.bold)
            }
            .padding()
            HStack {
                TextField("Enter location...", text: $textEntry)
                    .textFieldStyle(.roundedBorder)
                    .accessibilityIdentifier("locationTextField")
                Button("Add") {
                    locationsManager.addLocation(textEntry)
                    textEntry = String()
                }
                .buttonStyle(.borderedProminent).accessibilityIdentifier("addLocationButton")
            }
            .padding()
            List {
                ForEach(locationsManager.locations, id: \.self) { location in
                    HStack {
                        Text(location).accessibilityIdentifier("CustomLocation_\(location)")
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
