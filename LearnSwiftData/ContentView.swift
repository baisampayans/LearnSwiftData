//
//  ContentView.swift
//  LearnSwiftData
//
//  Created by baisampayan saha on 7/14/24.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    
    @Environment(\.modelContext) var modelContext
    @State private var path = [Person]()
    @Query var people: [Person]
    
    var body: some View {
        NavigationStack(path: $path) {
            List {
                ForEach(people) { person in
                    NavigationLink(value: person) {
                        Text(person.name)
                    }
                }
            }//end of list
            .navigationTitle("Face Facts")
            .navigationDestination(for: Person.self) { person in
                EditPersonView(person: person)
            }
            .toolbar(.automatic, for: ToolbarPlacement.navigationBar)
            .toolbar(content: {
                Button("Add person", systemImage: "plus") {
                    addPerson()
                }
            })
        }//end of NavigationStack
    }//end of body
    
    func addPerson() {
        let person = Person(name: "", emailAddress: "", details: "")
        modelContext.insert(person)
        path.append(person)
    }
}

#Preview {
    ContentView()
}
