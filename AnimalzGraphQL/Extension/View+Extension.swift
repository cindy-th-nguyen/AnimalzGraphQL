//
//  View+Extension.swift
//  AnimalzGraphQL
//
//  Created by Nguyen Cindy on 15/09/2021.
//

import Foundation
import SwiftUI


extension View {
    func navigate<NewView: View>(to view: NewView, when binding: Binding<Bool>) -> some View {
            NavigationView {
                ZStack {
                    self
                        .navigationBarTitle("")
                        .navigationBarHidden(true)

                    NavigationLink(
                        destination: view
                            .navigationBarTitle("")
                            .navigationBarHidden(true),
                        isActive: binding
                    ) {
                        EmptyView()
                    }
                }
            }
        }
}
