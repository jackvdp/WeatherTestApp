//
//  CurrentLocationTests.swift
//  WeatherTestSwiftUITests
//
//  Created by Jack Vanderpump on 10/07/2022.
//

import XCTest
@testable import WeatherTestSwiftUI
import CoreLocation

class CurrentLocationTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testGetCorrectCoord() {
        let useCase = GetCurrentLocation()
        let promise = expectation(description: "Completion handler invoked")
        var coordinate: CLLocationCoordinate2D?

        useCase.execute { coord, name in
            coordinate = coord
            promise.fulfill()
        }
        wait(for: [promise], timeout: 5)
        
        XCTAssertNotNil(coordinate)
    }

}
