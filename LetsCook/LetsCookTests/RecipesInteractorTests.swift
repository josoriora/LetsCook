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

        XCTAssertNotNil(recipeInteractor)
    }
}
