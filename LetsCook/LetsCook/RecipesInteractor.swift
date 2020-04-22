//
//  RecipesInteractor.swift
//  LetsCook
//
//  Created by Julian Andres Osorio Ramirez on 4/21/20.
//  Copyright © 2020 julian. All rights reserved.
//

import Foundation

protocol RecipesInteractor {
    func getRecipes(completion: ([Recipe]) -> Void)
}

class RecipeInteractorImpl: RecipesInteractor {
    func getRecipes(completion: ([Recipe]) -> Void) {

    }
}
