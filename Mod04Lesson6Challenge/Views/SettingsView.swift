//
//  SettingsView.swift
//  Mod04Lesson6Challenge
//
//  Created by Paul Lyttle on 03/04/2021.
//

import SwiftUI

struct SettingsView: View {
    
    @EnvironmentObject var model:PersonModel
    
    var body: some View {
        
        // Toggle display of each field in list view
        GeometryReader { geo in
            VStack {
                Text("Display Preferences")
                    .font(.largeTitle)
                
                Toggle("Show name", isOn: $model.showName)
                Toggle("Show address", isOn: $model.showAddress)
                Toggle("Show company", isOn: $model.showCompany)
                Toggle("Show years' experience", isOn: $model.showYears)
                
            }
            .padding()            
        }
        
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
            .environmentObject(PersonModel())
    }
}
