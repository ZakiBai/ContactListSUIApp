//
//  ContactListView.swift
//  ContactListSUIApp
//
//  Created by Zaki on 23.06.2023.
//

import SwiftUI

struct ContactListView: View {
    let persons: [Person]
    
    
    var body: some View {
        NavigationStack {
            List(persons) { person in
                Section(person.fullName) {
                    HStack {
                        Image(systemName: "phone")
                            .foregroundColor(.blue)
                        Text(person.phone)
                    }
                    HStack {
                        Image(systemName: "mail")
                            .foregroundColor(.blue)
                        Text(person.email)
                    }
                }
            }
            .navigationTitle("Contact List")
            .listStyle(.grouped)
        }
    }
}

struct ContactListView_Previews: PreviewProvider {
    static var previews: some View {
        ContactListView(persons: Person.getContacts())
    }
}
