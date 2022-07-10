//
//  Person.swift
//  PhoneBook
//
//  Created by kukushkin-ds on 06.07.2022.
//


struct Person: Equatable {
    let firstName: String
    let secondName: String
    let email: String
    let phone: String
    
    var fullName: String {
        "\(firstName) \(secondName)"
    }
    
    static func == (lhs: Person, rhs: Person) -> Bool {
        lhs.firstName == rhs.firstName || lhs.secondName == rhs.secondName ||
            lhs.email == rhs.email || lhs.phone == rhs.phone
    }
    
    static func getPhoneBook() -> [Person] {
        
        let dataManager = DataManager()
        var phoneBook: [Person] = []
        
        while phoneBook.count < dataManager.firstNames.count {
            let person = Person(
                firstName: dataManager.firstNames.randomElement() ?? "Name",
                secondName: dataManager.secondNames.randomElement() ?? "Sirname",
                email: dataManager.emails.randomElement() ?? "Email",
                phone: dataManager.phones.randomElement() ?? "Phone"
            )
            guard !phoneBook.contains(person) else { continue }
            phoneBook.append(person)
        }
        return phoneBook
    }
}
