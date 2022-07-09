//
//  CustomLocationTests.swift
//  WeatherTestSwiftUITests
//
//  Created by Jack Vanderpump on 07/07/2022.
//

import XCTest
@testable import WeatherTestSwiftUI
import CoreLocation

class CustomLocationTests: XCTestCase {

    let latittude = 51.5033466
    let longitude = -0.0793965
    
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testGetCorrectCoord() {
        let useCase = GetCustomLocation()
        let promise = expectation(description: "Completion handler invoked")
        var coordinate: CLLocationCoordinate2D?
        
        useCase.getCoord(location: "London") { coord in
            coordinate = coord
            promise.fulfill()
        }
        wait(for: [promise], timeout: 5)
        
        XCTAssertNotNil(coordinate)
    }

    func testGetLocationName() {
        let useCase = GetCustomLocation()
        let promise = expectation(description: "Completion handler invoked")
        var name: String?
        let coord = CLLocationCoordinate2D(latitude: latittude,
                                           longitude: longitude)
        
        
        useCase.getLocationName(location: coord) { n in
            name = n
            promise.fulfill()
        }
        wait(for: [promise], timeout: 5)
        
        XCTAssertEqual(name, "London")
    }
    
    func testGetLocationCoordAndName() {
        let useCase = GetCustomLocation()
        let promise = expectation(description: "Completion handler invoked")
        var coordinate: CLLocationCoordinate2D?
        var name: String?
        
        useCase.execute(location: "London") { coord, n in
            coordinate = coord
            name = n
            promise.fulfill()
        }
        wait(for: [promise], timeout: 5)
        
        XCTAssertNotNil(coordinate)
        XCTAssertEqual(name, "London")
    }
    
    func testControllerForCustomLocation() {
        let controller = LocationController()
        let promise = expectation(description: "Completion handler invoked")
        let location = "London"
        var coordinate: CLLocationCoordinate2D?
        var name: String?
        
        controller.getCustomLocation(where: location) { coord, n in
            coordinate = coord
            name = n
            promise.fulfill()
        }
        wait(for: [promise], timeout: 5)
        
        XCTAssertNotNil(coordinate)
        XCTAssertEqual(name, "London")
    }
}
