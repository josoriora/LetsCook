//
//  NetworkWorker.swift
//  LetsCook
//
//  Created by Julian Andres Osorio Ramirez on 4/21/20.
//  Copyright © 2020 julian. All rights reserved.
//

import Foundation

class NetworkWorker: RecipesInteractor {
    func getRecipes(completion: @escaping ([Recipe]) -> Void) {
        let session = URLSession.shared
        let url = URL(string: "http://gl-endpoint.herokuapp.com/recipes")!

        let task = session.dataTask(with: url, completionHandler: { data, response, error in

            completion([RecipeAdapter()])
        })

        task.resume()
    }
}
