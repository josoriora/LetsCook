//
//  RecipesInteractorTests.swift
//  LetsCookTests
//
//  Created by Julian Andres Osorio Ramirez on 4/21/20.
//  Copyright © 2020 julian. All rights reserved.
//

import XCTest
@testable import LetsCook

class RecipesInteractorTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testRecipeInteractorCreation() {
        let recipeInteractor = RecipeInteractorImpl()

        recipeInteractor.getRecipes { (recipes: [Recipe]?) in

        }

        XCTAssertNotNil(recipeInteractor)
    }

    func testNetworkWorkerGetRecipes() {
        let networkWorker = NetworkWorker()
        let expectation = self.expectation(description: "async expecation")

        XCTAssertNotNil(networkWorker)

        networkWorker.getRecipes { (recipes: [Recipe]?, error: Error?) in
            XCTAssertTrue(recipes?.count ?? 0 > 0)
            expectation.fulfill()
        }

        self.waitForExpectations(timeout: 10, handler: nil)
    }
}
