//
//  ContentView.swift
//  AnimalzGraphQL
//
//  Created by Nguyen Cindy on 15/09/2021.
//

import SwiftUI

struct ContentView: View {
    @State var isLoggedIn: Bool = false
    
    var body: some View {
        if isLoggedIn {
            HomeView()
                .navigationTitle("")
                .navigationBarHidden(true)
                .tabItem {
                    Image(systemName: "phone.fill")
                    Text("First Tab")
                }
        } else {
            LoginView()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
