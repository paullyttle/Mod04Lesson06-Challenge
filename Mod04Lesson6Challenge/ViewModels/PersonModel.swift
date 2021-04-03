//
//  PersonModel.swift
//  Mod04Lesson6Challenge
//
//  Created by Paul Lyttle on 03/04/2021.
//

import Foundation

class PersonModel: ObservableObject {
    
    @Published var persons = [Person]()
    
    init() {
        persons.append(Person(name: "Joe Johnson", address: "42 Ingleberry", company: "Apple", yearsOfExperience: 42))
        persons.append(Person(name: "Peter Smith", address: "5 Main Street", company: "Apple", yearsOfExperience: 3))
        persons.append(Person(name: "Peter Peterson", address: "17 The Nook", company: "A6DT", yearsOfExperience: 82))
        
    }
    
}
