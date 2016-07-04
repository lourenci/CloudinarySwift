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
    func testTransformationURLWithChain1() {
        let transformation0 = Transformation().x(.pixel(355)).y(.pixel(410)).width(.pixel(300)).height(.pixel(200)).crop(.crop)
        let transformation1 = Transformation(forTranformation: transformation0).width(.pixel(150)).height(.pixel(100)).crop(.scale)
        
        XCTAssertEqual(transformation1.URL, "x_355,y_410,w_300,h_200,c_crop/w_150,h_100,c_scale")
    }
    func testTransformationURLWithChain2() {
        let transformation0 = Transformation().width(.pixel(400)).height(.pixel(400)).crop(.crop).gravity(.face).radius(.max)
        let transformation1 = Transformation(forTranformation: transformation0).width(.pixel(200))
        
        XCTAssertEqual(transformation1.URL, "w_400,h_400,c_crop,g_face,r_max/w_200")
    }
    
    func testTransformationURLWithChainAndPipeSeparator() {
        let transformation0 = Transformation().crop(.fill).height(.pixel(50))
        let transformation1 = Transformation(forTranformation: transformation0).height(.percent(0.5))
        let transformation2 = Transformation(forTranformation: transformation1).crop(.lpad).height(.pixel(30))
        transformation2.transformationSeparator = "|"
        
        XCTAssertEqual(transformation2.URL, "c_fill,h_50|h_0.5|c_lpad,h_30")
    }
    
}
