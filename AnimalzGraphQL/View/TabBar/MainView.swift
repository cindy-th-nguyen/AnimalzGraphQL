//
//  MainView.swift
//  AnimalzGraphQL
//
//  Created by Nguyen Cindy on 15/09/2021.
//

import SwiftUI

struct MainView: View {
    @State private var currentView: Tab = .home
    @State private var showModal: Bool = false

    var body: some View {
        NavigationView {
            VStack {
                CurrentScreen(currentView: self.$currentView)
                TabBar(currentView: self.$currentView, showModal: self.$showModal)
            }
            .edgesIgnoringSafeArea(.all)
        }
        .background(Color(.white))
        .navigationViewStyle(StackNavigationViewStyle())
        .sheet(isPresented: self.$showModal) { ScreenModal() }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
