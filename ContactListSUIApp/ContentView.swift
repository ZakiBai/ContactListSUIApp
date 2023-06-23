//
//  ContentView.swift
//  ContactListSUIApp
//
//  Created by Zaki on 23.06.2023.
//

import SwiftUI

struct ContentView: View {
    private let persons = Person.getContacts()
    
    var body: some View {
        TabView {
            FullNameView(persons: persons)
                .tabItem {
                    Image(systemName: "person")
                    Text("Contacts")
                }
            ContactListView()
                .tabItem {
                    Image(systemName: "phone")
                    Text("Numbers")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
