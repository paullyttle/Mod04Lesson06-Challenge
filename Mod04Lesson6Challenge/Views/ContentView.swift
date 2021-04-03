//
//  ContentView.swift
//  Mod04Lesson6Challenge
//
//  Created by Paul Lyttle on 03/04/2021.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        
        TabView() {
            
            PersonListView()
                .tabItem {
                    VStack {
                        Image(systemName: "list.bullet")
                        Text("list")
                    }
                }
            
            SettingsView()
                .tabItem {
                    VStack {
                        Image(systemName: "gearshape")
                        Text("Settings")
                        
                    }
                }
        }.environmentObject(PersonModel())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
