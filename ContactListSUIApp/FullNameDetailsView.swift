//
//  FullNameDetailsView.swift
//  ContactListSUIApp
//
//  Created by Zaki on 23.06.2023.
//

import SwiftUI

struct FullNameDetailsView: View {
    let person: Person
    
    var body: some View {
        List {
            HStack {
                Spacer()
                Image(systemName: "person")
                    .resizable()
                    .frame(width: 150, height: 150, alignment: .center)
                Spacer()
            }
            HStack {
                Image(systemName: "phone")
                Text(person.phone)
            }
            HStack {
                Image(systemName: "mail")
                Text(person.email)
            }
        }
        .navigationTitle(person.fullName)
      
    }
}

struct FullNameDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        FullNameDetailsView(person: Person.getContact())
    }
}
