//
//  TabBarItem.swift
//  AnimalzGraphQL
//
//  Created by Nguyen Cindy on 15/09/2021.
//

import SwiftUI

struct TabBarItem: View {
    @Binding var currentView: Tab
    let imageName: String
    let paddingEdges: Edge.Set
    let tab: Tab

    var body: some View {
        VStack(spacing:0) {
            Image(systemName: imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .padding(5)
                .frame(width: 40, height: 40, alignment: .center)
                .background(Color(self.currentView == tab ? .blue : .red).opacity(0.2))
                .foregroundColor(Color(self.currentView == tab ? .blue : .black))
                .cornerRadius(6)
        }
        .frame(width: 100, height: 50)
        .onTapGesture { self.currentView = self.tab }
        .padding(paddingEdges, 15)
    }
}

