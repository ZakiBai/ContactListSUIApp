//
//  FullNameRowView.swift
//  ContactListSUIApp
//
//  Created by Zaki on 23.06.2023.
//

import SwiftUI

struct FullNameRowView: View {
    let person: Person
    
    var body: some View {
        HStack {
            Text("\(person.fullName)")
            Spacer()
        }
    }
}

struct FullNameRowView_Previews: PreviewProvider {
    static var previews: some View {
        FullNameRowView(person: Person.getContact())
    }
}
