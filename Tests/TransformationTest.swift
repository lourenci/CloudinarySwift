//
//  CloudinaryTests.swift
//  CloudinaryTests
//

import XCTest
@testable import CloudinarySwift

class TransformationTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testTransformationURL() {
        let transformation = Transformation().crop(.fill).height(.pixel(50))
        
        XCTAssertEqual(transformation.URL, "c_fill,h_50")
    }
    func testTransformationURLWithChain() {
        let transformation0 = Transformation().crop(.fill).height(.pixel(50))
        let transformation1 = Transformation(forTranformation: transformation0).height(.percent(0.5))
        let transformation2 = Transformation(forTranformation: transformation1).crop(.lpad).height(.pixel(30))
        
        XCTAssertEqual(transformation2.URL, "c_fill,h_50/h_0.5/c_lpad,h_30")
    }
}
