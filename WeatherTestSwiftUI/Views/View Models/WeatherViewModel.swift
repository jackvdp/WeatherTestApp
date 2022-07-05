//
//  ViewModel.swift
//  WeatherTestUI
//
//  Created by Jack Vanderpump on 04/07/2022.
//

import Foundation
import CoreLocation

class WeatherViewModel: NSObject, ObservableObject, CLLocationManagerDelegate {
    
    @Published var currentWeather: DisplayedWeather?
    @Published var upcomingWeather = [DisplayedWeather]()
    @Published var locationName: String?
    let manager = CLLocationManager()
    
    @Published var location: CLLocationCoordinate2D? {
        didSet {
            getWeather()
            getLocationName()
        }
    }
    
    override init() {
        super.init()
        manager.delegate = self
        requestLocation()
    }
    
    deinit {}
    
    func requestLocation() {
        manager.requestLocation()
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        location = locations.first?.coordinate
    }
    
    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
        print(error)
    }
    
    func getLocationName() {
        let geocoder = CLGeocoder()
        
        guard let location = location else {
            return
        }
        
        geocoder.reverseGeocodeLocation(CLLocation(latitude: location.latitude, longitude: location.longitude)) { placemarks, error in
            if let firstLocation = placemarks?[0] {
                if let name = firstLocation.name {
                    self.locationName = name
                }
            }
        }
    }
    
    func getWeather() {
        
        guard let location = location else { return }

        ForecastController().getHourly(longtitude: location.longitude, latitude: location.latitude) { weather in
            
            guard let weather = weather else {
                return
            }
            
            if let times = weather.features.first?.properties.timeSeries {
                
                var nextTimes = times
                guard !nextTimes.isEmpty else { return }
                
                self.currentWeather = nil
                self.upcomingWeather = []
                
                let firstTime = nextTimes.removeFirst()
                self.currentWeather = self.changeTimeIntoWeather(time: firstTime)
                
                for time in nextTimes {
                    if let singleWeather = self.changeTimeIntoWeather(time: time) {
                        self.upcomingWeather.append(singleWeather)
                    }
                    
                }
                
            }
            
        }
    }
    
    private func changeTimeIntoWeather(time: TimeSery) -> DisplayedWeather? {
        if let hour = self.getHour(dateString: time.time) {
            
            return DisplayedWeather(
                hour: hour,
                temperature: time.screenTemperature,
                realFeel: time.feelsLikeTemperature,
                chanceOfRain: time.probOfPrecipitation,
                windSpeed: Int(time.windSpeed10M),
                weather: getWeatherImage(code: time.significantWeatherCode)
            )
            
        }
        return nil
    }
    
    private func getDate(dateString: String) -> Date? {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm'Z'"
        dateFormatter.timeZone = .init(secondsFromGMT: 0)
        return dateFormatter.date(from: dateString)
    }
    
    private func getHour(dateString: String) -> Int? {
        if let date = getDate(dateString: dateString) {
            let calendar = Calendar.current
            let hour = calendar.component(.hour, from: date)
            return hour
        }
        return nil
    }
    
    func getWeatherImage(code: Int) -> String {
        
        switch code {
        case 0...1:
            return "sun.max"
        case 2...4:
            return "cloud.sun"
        case 5...6:
            return "cloud.fog"
        case 7...8:
            return "cloud"
        case 9...12:
            return "cloud.drizzle"
        case 13...15:
            return "cloud.rain"
        case 16...18:
            return "cloud.sleet"
        case 19...21:
            return "cloud.hail"
        case 22...27:
            return "cloud.snow"
        case 28...30:
            return "cloud.bolt"
        default:
            return "sun.min"
        }
        
    }
    
}
