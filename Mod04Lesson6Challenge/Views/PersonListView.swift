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
        HStack {
            // Field labels
            VStack(alignment: .leading) {
                if model.showName {
                    Text("Name: ")
                        .fontWeight(.bold)
                }
                if model.showAddress {
                Text("Address: ")
                    .fontWeight(.bold)
                    
                }
                if model.showCompany {
                Text("Company: ")
                    .fontWeight(.bold)
                }
                if model.showYears {
                Text("Years' experience: ")
                    .fontWeight(.bold)
                }
            }
            // Person fields
            VStack(alignment: .leading) {
                if model.showName {
                    Text(r.name)
                    
                }
                if model.showAddress {
                    Text(r.address)
                    
                }
                if model.showCompany {
                    Text( r.company)
                    
                }
                if model.showYears {
                    Text(String(r.yearsOfExperience))
                    
                }
            }
        }
        
       }
    }
}

struct PersonListView_Previews: PreviewProvider {
    static var previews: some View {
        
        PersonListView()
            .environmentObject(PersonModel())
    }
}
