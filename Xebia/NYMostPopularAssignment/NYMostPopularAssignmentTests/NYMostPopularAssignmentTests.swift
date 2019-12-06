//
//  NYMostPopularAssignmentTests.swift
//  NYMostPopularAssignmentTests
//
//  Created by Mehboob Alam on 06/12/19.
//  Copyright © 2019 VE. All rights reserved.
//

import XCTest
@testable import NYMostPopularAssignment

class NYMostPopularAssignmentTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func testApi() {
        //This single function tests all thing includings extensiona and apis allthough we can have dependancy injuctionf or dummy network responses which is better that this.
        let expectation = self.expectation(description: "Success")
        NetworkManager.shared.sendRequest(atPoint: APIPints.mostPopularList, method: .get, parameters: nil) { (resposne: NetworkResponse<[NYNewsListModel]>) in
            switch resposne.resultType {
            case .failure(let error):
                XCTAssertNil(error, "Unexpected error occured: \(String(describing: error.localizedDescription))")
            case .success(let list):
                if list.count >= 0 {
                    expectation.fulfill()
                } else {
                    XCTFail()
                }
            }
        }
        ///We have to update timeout value corresponding to request time out
        waitForExpectations(timeout: 50) { (error) in
            XCTAssertNil(error, "Test timed out. \(error!.localizedDescription)")
        }
    }
    
    
    
    
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
