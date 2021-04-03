//
//  PersonListView.swift
//  Mod04Lesson6Challenge
//
//  Created by Paul Lyttle on 03/04/2021.
//

import SwiftUI

struct PersonListView: View {
    
    @EnvironmentObject var model:PersonModel
    
    var body: some View {
        
       List(model.persons) { r in
            
            // MARK: Row item
            VStack {
                Text(r.name)
                Text(r.address)
                Text(r.company)
                Text(String(r.yearsOfExperience))
            }            
        }
    }
}

struct PersonListView_Previews: PreviewProvider {
    static var previews: some View {
        PersonListView()
    }
}
