//
//  ContentView.swift
//  RandomFact
//
//  Created by Jamie Joung on 10/2/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
            VStack {
                Image(systemName: "globe")
                    .imageScale(.large)
                    .foregroundColor(.accentColor)
                if let factOne = Fact.factOne {
                    Text("Random Fact: \(factOne.fact)")
                } else {
                    Text("No fact found.")
                }
            }
            .padding()
        }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
