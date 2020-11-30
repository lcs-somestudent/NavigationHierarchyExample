//
//  ContentView.swift
//  NavigationHierarchyExample
//
//  Created by Russell Gordon on 2020-11-30.
//

import SwiftUI

struct SomeDetails {
    
    var title: String
    var description: String
    var imageTag: String
    
}

struct ContentView: View {
    
    // An array of top level (parent) options
    private var topLevelOptions = ["Option 1", "Option 2", "Option 3"]
    @State private var selectedTopLevel = 0

    // A dictionary of second level (child) options
    //
    // The type is [String: SomeDetails]
    //
    private var secondLevelOptions = [
        [
            "Option 1a": SomeDetails(title: "1a title",
                                     description: "1a description",
                                     imageTag: ""),
            "Option 1b": SomeDetails(title: "1b title",
                                     description: "1b description",
                                     imageTag: ""),
            "Option 1c": SomeDetails(title: "1c title",
                                     description: "1c description",
                                     imageTag: "")
        ],
        [
            "Option 2a": SomeDetails(title: "2a title",
                                     description: "2a description",
                                     imageTag: ""),
            "Option 2b":  SomeDetails(title: "2b title",
                                      description: "2b description",
                                      imageTag: "")
        ],
        [
            "Option 3a":  SomeDetails(title: "3a title",
                                      description: "3a description",
                                      imageTag: ""),
            "Option 3b":  SomeDetails(title: "3b title",
                                      description: "3b description",
                                      imageTag: ""),
            "Option 3c":  SomeDetails(title: "3c title",
                                      description: "3c description",
                                      imageTag: ""),
            "Option 3d":  SomeDetails(title: "3d title",
                                      description: "3d description",
                                      imageTag: "")
        ]
    ]

    
    var body: some View {
        
        NavigationView {
            
            Form {
                
                Picker("Select top level", selection: $selectedTopLevel) {
                    
                    ForEach(0 ..< topLevelOptions.count) { index in
                        Text("\(topLevelOptions[index])")
                    }
                    
                }
                
            }
            .navigationTitle("Nav Hierarchy Example")
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
