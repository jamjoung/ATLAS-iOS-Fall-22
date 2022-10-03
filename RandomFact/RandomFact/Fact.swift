//
//  Fact.swift
//  RandomFact
//
//  Created by Jamie Joung on 10/2/22.
//

import Foundation

struct Fact: Codable {
    var fact: String
    var id: String
    var category: String
    var subcategory: String
//    var height: S?
//    var mass: Int?
    static var factOne: Fact? {
        Fact.fromJSON(named: "factOne")
    }

    static func fromJSON(named fact: String) -> Fact? {
        if let data = Data.fromJSONFile(forFact: fact) {
            let decoder = JSONDecoder()
            do {
                let factOne = try decoder.decode(Fact.self, from: data)
                return factOne
            } catch {
                print("Could not make Fact from data.", error.localizedDescription)
            }
        }
        return nil
    }
}
