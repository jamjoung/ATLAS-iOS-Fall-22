//
//  Data+.swift
//  RandomFact
//
//  Created by Jamie Joung on 10/2/22.
//

import Foundation

extension Data {
    static func fromJSONFile(forFact fact: String) -> Data? {
        do {
            if let bundlePath = Bundle.main.path(forResource: fact, ofType: "json"),
               let jsonData = try String(contentsOfFile: bundlePath).data(using: .utf8) {
                return jsonData
            }
        } catch {
            print("Couldn't read JSON file.", error)
        }

        return nil
    }
}
