//
//  Person.swift
//  ContactListSUIApp
//
//  Created by Zaki on 23.06.2023.
//

import Foundation

struct Person: Identifiable {
    var id = UUID()
    let name: String
    let surname: String
    let email: String
    let phone: String
    
    var fullName: String {
        "\(name) \(surname)"
    }


    static func getContacts() -> [Person] {
        var contacts: [Person] = []
        let dataStorage = DataStorage.shared
        
        let names = dataStorage.names.shuffled()
        let surnames = dataStorage.surnames.shuffled()
        let emails = dataStorage.emails.shuffled()
        let phones = dataStorage.phones.shuffled()
        
        for index in 0..<names.count {
            let person = Person(
                name: names[index],
                surname: surnames[index],
                email: emails[index],
                phone: phones[index]
            )
            
            contacts.append(person)
        }
        return contacts
    }
    
    static func getContact() -> Person {
        let dataStorage = DataStorage.shared
        
        let name = dataStorage.names.shuffled().first
        let surname = dataStorage.surnames.shuffled().first
        let email = dataStorage.emails.shuffled().first
        let phone = dataStorage.phones.shuffled().first
        
        let person = Person(
            name: name ?? "",
            surname: surname ?? "",
            email: email ?? "",
            phone: phone ?? ""
        )
        
        return person
    }
    
    
}

enum Rows: String {
    case phone = "phone"
    case email = "mail"
}

