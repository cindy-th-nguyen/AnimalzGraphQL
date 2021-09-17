//
//  SignUpView.swift
//  AnimalzGraphQL
//
//  Created by Nguyen Cindy on 16/09/2021.
//

import SwiftUI

struct SignUpView: View {
    @State private var name: String = ""
    @State private var email: String = ""
    @State private var password: String = ""
    @State private var phoneNumber: String = ""
    @State private var selectedGender: Gender = .female
    @State private var willMoveToNextScreen = false
    var body: some View {
        VStack(alignment: .center, spacing: 10) {
            Text("Créer votre compte")
                .font(.title)
                .padding(.bottom, 30)
                .padding(.top, 30)
            TextField(
                "Name",
                text: $name)
                .padding()
                .overlay(
                    RoundedRectangle(cornerRadius: 25)
                        .stroke(Color.orange, lineWidth: 2)
                )
            
            Picker("", selection: $selectedGender) {
                ForEach(Gender.allCases, id: \.self) { value in
                    Text(value.rawValue)
                        .tag(value)
                }
            }.pickerStyle(SegmentedPickerStyle())
            
            TextField(
                "Téléphone",
                text: $phoneNumber)
                .disableAutocorrection(true)
                .keyboardType(.emailAddress)
                .padding()
                .overlay(
                    RoundedRectangle(cornerRadius: 25)
                        .stroke(Color.orange, lineWidth: 2))
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
            Spacer()
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
        }
        .padding(20)
        .padding(.bottom, 20)
        .navigate(to: HomeView(), when: $willMoveToNextScreen)
        .navigationBarBackButtonHidden(false)
    }
}

struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView()
    }
}
