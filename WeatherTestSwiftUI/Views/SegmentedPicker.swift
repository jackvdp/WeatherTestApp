//
//  SegmentedPicker.swift
//  WeatherTestSwiftUI
//
//  Created by Jack Vanderpump on 05/07/2022.
//

import SwiftUI

struct SegmentedPicker: View {
    
    @Binding var selection: DailyHourly
    
    var body: some View {
        Picker("", selection: $selection) {
            ForEach(DailyHourly.allCases) { type in
                Text(type.rawValue)
                    .tag(type)
            }
        }
        .pickerStyle(.segmented)
        .frame(width: 200)
    }
}

struct SegmentedPicker_Previews: PreviewProvider {
    static var previews: some View {
        SegmentedPicker(selection: .constant(.daily))
    }
}
