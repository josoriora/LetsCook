//
//  NetworkWorker.swift
//  LetsCook
//
//  Created by Julian Andres Osorio Ramirez on 4/21/20.
//  Copyright © 2020 julian. All rights reserved.
//

import Foundation

class NetworkWorker {
    func getRecipes(completion: @escaping ([Recipe]?, Error?) -> Void) {
        guard let url = URL(string: "http://gl-endpoint.herokuapp.com/recipes") else {
            return
        }

        let session = URLSession.shared
        let task = session.dataTask(with: url, completionHandler: { data, response, error in
            completion(nil, nil)
        })

        task.resume()
    }
}
