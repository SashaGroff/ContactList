//
//  Person.swift
//  ContactList
//
//  Created by Aleksandr Goncharov on 14.12.2023.
//

struct Person {
    let name: String
    let surname: String
    let phoneNumber: String
    let email: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
    
    static func getContactList() -> [Person] {
        let dataStore = DataStore()
        var persons: [Person] = []
        
        let names = dataStore.names.shuffled()
        let surnames = dataStore.surnames.shuffled()
        let phoneNumbers = dataStore.phoneNumbers.shuffled()
        let emails = dataStore.emails.shuffled()
        
        let dataCount = min(
            names.count,
            surnames.count,
            phoneNumbers.count,
            emails.count
        )
        
        for index in 0..<dataCount {
            let person = Person(
                name: names[index],
                surname: surnames[index],
                phoneNumber: phoneNumbers[index],
                email: emails[index]
            )
            persons.append(person)
        }
        
        return persons
     
    }
}
