//
//  Person.swift
//  HomeWork 2.7
//
//  Created by Macbook on 19.02.2020.
//  Copyright © 2020 Alex Dev. All rights reserved.
//


struct Person {
    var name: String
    var lastName: String
    var email: String
    var phoneNumber: String
    
    var fullName: String {
        "\(name) \(lastName)"
    }
}

extension Person {
    static func getPersonDate() -> [Person] {
        
        let names = ["Jena", "Roma", "Alex", "Mars", "Barsik", "Ivan","Vasya", "Bratishka", "Obama"].shuffled()
        let lastNames = ["Vnykov", "Romanovich", "Dev", "Koshnina", "Tabyretkin", "Swiftovich", "Black", "Urgantus", "Pupkin"]
        let emails = ["aa@dev", "aa@vik", "vnuk@gm", "may@mail", "rotaPodjem@mail", "pythonSlabak@gm", "urg@ukr", "helloWorld@gm", "tabyret@mail"]
        let phoneNumbers = ["1111","2222","3333","4444","55555","66666", "7777", "8888", "99999"].shuffled()
        
        var fullName = [Person]()

        for count in 0..<names.count {
            fullName += [
                Person(
                    name: names[count],
                    lastName: lastNames[count],
                    email: emails[count],
                    phoneNumber: phoneNumbers[count]
                )
            ]
        }
        return fullName
    }
}
