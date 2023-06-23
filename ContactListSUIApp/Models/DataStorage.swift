//
//  DataStorage.swift
//  ContactListSUIApp
//
//  Created by Zaki on 23.06.2023.
//

import Foundation

final class DataStorage {
    
    static let shared = DataStorage()
    
    let names = [
        "John",
        "Marry",
        "Ashley",
        "Rayan",
        "Amber",
        "Lebron",
        "Travis",
        "Steve"
    ]
    
    let surnames = [
        "Jobs",
        "James",
        "Bezos",
        "Menzhanov",
        "Biber",
        "Li",
        "Durant",
        "Irving"
    ]
    
    let emails = [
        "zzz@mail.ru",
        "steve@apple.com",
        "zaki@inbox.ru",
        "person@swiftbook.ru",
        "lebron@lakers.com",
        "uta@nba.com",
        "rockest@nba.com",
        "johnny@apple.com"
    ]
    
    let phones = [
        "44550012",
        "14231434",
        "11002321",
        "80713214",
        "14555113",
        "11144455",
        "99995432",
        "22331133"
    ]
    
    private init() {}
}
