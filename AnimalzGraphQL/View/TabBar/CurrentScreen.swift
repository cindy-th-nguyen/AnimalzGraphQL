//
//  CurrentScreen.swift
//  AnimalzGraphQL
//
//  Created by Nguyen Cindy on 15/09/2021.
//

import SwiftUI

struct CurrentScreen: View {
    @Binding var currentView: Tab

    var body: some View {
        VStack {
            if self.currentView == .home {
                HomeView()
            } else {
                ProfilView()
            }
        }
    }
}
