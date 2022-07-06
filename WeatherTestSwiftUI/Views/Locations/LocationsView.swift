//
//  LocationsView.swift
//  WeatherTestSwiftUI
//
//  Created by Jack Vanderpump on 05/07/2022.
//

import SwiftUI

struct LocationsView: View {
    
    @ObservedObject var locationsViewModel: LocationsViewModel
    @State private var textEntry = String()
    @State private var selecteditem: String?
    
    var body: some View {
        VStack {
            TextField("Enter location...", text: $textEntry)
                .textFieldStyle(.roundedBorder)
                .padding()
            Button("Add") {
                locationsViewModel.addLocation(textEntry)
                textEntry = String()
            }
            .buttonStyle(.borderedProminent)
            List {
                ForEach(locationsViewModel.locations, id: \.self) { location in
                    HStack {
                        Text(location)
                        Spacer()
                        Image(systemName: "x.circle")
                            .opacity(0.6)
                            .onTapGesture {
                                locationsViewModel.removeLocation(location)
                            }
                    }
                }
                
            }
            .listStyle(.plain)
        }
    }
    
}

struct LocationsView_Previews: PreviewProvider {
    static var viewModel: LocationsViewModel {
        let vm = LocationsViewModel()
        vm.locations = ["Cambridge", "London", "New York"]
        return vm
    }
    
    static var previews: some View {
        LocationsView(locationsViewModel: viewModel)
    }
}