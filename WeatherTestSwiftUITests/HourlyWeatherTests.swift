//
//  HourlyWeatherTests.swift
//  WeatherTestSwiftUITests
//
//  Created by Jack Vanderpump on 05/07/2022.
//

import XCTest
@testable import WeatherTestSwiftUI

class HourlyWeatherTests: XCTestCase {
    
    let latittude = 51.4934
    let longitude = 0.0098

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testGatewayGets200StatusCode() {
        let gateway = HourlyForecatsGateway()
        var statusCode: Int?
        let promise = expectation(description: "Completion handler invoked")
        
        gateway.getForLocation(longtitude: longitude,
                               latitude: latittude) { code, _ in
            statusCode = code
            promise.fulfill()
        }
        wait(for: [promise], timeout: 5)
        
        XCTAssertEqual(statusCode, 200)
        
    }
    
    func testDecodeToModel() {
        let gateway = HourlyForecatsGateway()
        var weather: HourlyWeather?
        let data = TestData.hourlyWeather.data(using: .utf8)!
        
        weather = gateway.decodeData(data)
        
        XCTAssertNotNil(weather)
    }
    
    func testGatewayGetsWeatherModel() {
        let gateway = HourlyForecatsGateway()
        var weather: HourlyWeather?
        let promise = expectation(description: "Completion handler invoked")
        
        gateway.getForLocation(longtitude: longitude, latitude: latittude) { _, w in
            weather = w
            promise.fulfill()
        }
        wait(for: [promise], timeout: 5)
        
        XCTAssertNotNil(weather)
    }
    
    func testUseCaseProvidesErrorOnBadLocation() {
        let useCase = GetHourlyFoecasts()
        let promise = expectation(description: "Completion handler invoked")
        var error: Error?
        let badLongitutde: Double = 200
        
        useCase.execute(longtitude: badLongitutde, latitude: latittude) { _, e in
            error = e
            promise.fulfill()
        }
        wait(for: [promise], timeout: 5)
        
        XCTAssertNotNil(error)
    }
    
    func testControllerSendsBackWeather() {
        let controller = ForecastController()
        let promise = expectation(description: "Completion handler invoked")
        var weather: HourlyWeather?
        
        controller.getHourly(longtitude: longitude, latitude: latittude) { w in
            weather = w
            promise.fulfill()
        }
        wait(for: [promise], timeout: 5)
        
        XCTAssertNotNil(weather)
    }

}
