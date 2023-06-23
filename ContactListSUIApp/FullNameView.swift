//
//  FullNameView.swift
//  ContactListSUIApp
//
//  Created by Zaki on 23.06.2023.
//

import SwiftUI

struct FullNameView: View {
    let persons: [Person]
    
    var body: some View {
        NavigationStack {
            List(persons) { person in
                NavigationLink(destination: FullNameDetailsView(person: person)) {
                    FullNameRowView(person: person)
                }
            }
            .listStyle(.inset)
            .navigationTitle("Contact List")

        }
    }

}

struct FullNameView_Previews: PreviewProvider {
    static var previews: some View {
        FullNameView(persons: Person.getContacts())
    }
}
