//
//  EditPersonView.swift
//  LearnSwiftData
//
//  Created by baisampayan saha on 7/14/24.
//

import SwiftUI

struct EditPersonView: View {
    
    @Bindable var person: Person
    
    var body: some View {
        Form {
            Section {
                TextField("Name", text: $person.name)
                    .textContentType(.name)
                
                TextField("Email address", text: $person.emailAddress)
                    .textContentType(.emailAddress)
                    .textInputAutocapitalization(.never)
            }//end of section
            
            Section("Notes") {
                TextField("Details about this person", text: $person.details, axis: .vertical)
            }
        }//end of Form
        .navigationTitle("Edit Person")
        .navigationBarTitleDisplayMode(.inline)
    }
}

//#Preview {
//    EditPersonView(person: Person(name: "Ron", emailAddress: "ron@mail.com", details: "test"))
//}
