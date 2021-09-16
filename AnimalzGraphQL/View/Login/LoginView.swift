//
//  Login.swift
//  AnimalzGraphQL
//
//  Created by Nguyen Cindy on 15/09/2021.
//

import SwiftUI

struct LoginView: View {
    @State private var email: String = ""
    @State private var password: String = ""
    @State private var isEditing = false
    @State private var willMoveToNextScreen = false
    var body: some View {
        VStack(alignment: .center, spacing: 25) {
            Text("Login")
                .padding(.bottom, 40)
                .font(Font.largeTitle.bold())
            
            TextField(
                "Email",
                text: $email)
                .disableAutocorrection(true)
                .keyboardType(.emailAddress)
                .padding()
                .overlay(
                    RoundedRectangle(cornerRadius: 25)
                        .stroke(Color.orange, lineWidth: 2)
                )
            
            SecureField(
                "Mot de passe",
                text: $password)
                .disableAutocorrection(true)
                .padding()
                .overlay(
                    RoundedRectangle(cornerRadius: 25)
                        .stroke(Color.orange, lineWidth: 2)
                )
            Button(action: {
                self.willMoveToNextScreen = true
            }, label: {
                Text("Login")
                    .fontWeight(.bold)
                    .font(.headline)
                    .frame(minWidth: 0, maxWidth: .infinity)
                    .padding()
                    .foregroundColor(.white)
                    .background(Color.orange)
                    .cornerRadius(25)
            })
            
            Button(action: {}, label: {
                Text("Mot de passe oublié?")
            })
        }
        .padding(.leading, 40)
        .padding(.trailing, 40)
        .navigate(to: HomeView(), when: $willMoveToNextScreen)
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
