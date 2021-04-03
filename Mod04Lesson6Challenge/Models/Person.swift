//
//  Person.swift
//  Mod04Lesson6Challenge
//
//  Created by Paul Lyttle on 03/04/2021.
//

import Foundation

struct Person: Identifiable {
    
    var id = UUID()
    var name: String
    var address: String
    var company: String
    var yearsOfExperience: Int
    
}
