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
    @State private var willMoveToSignUpScreen = false
    @ObservedObject private var appSetting = AppSetting.shared
    
    var body: some View {
        VStack {
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
                    Network.shared.apollo.perform(mutation: LoginMutation(login: newLoginInput(email: self.email.lowercased(), password: self.password))) {
                        result in
                          guard let data = try? result.get().data else { return }
                        if data.newLogin?.result == true {
//                            data.newLogin?.u
                            appSetting.userFields = data.newLogin?.user?.fragments.allUserFields
                            self.willMoveToNextScreen = true
                        }
                    }
                    
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
            .padding(40)
            
            HStack(alignment: .bottom) {
                Text("Pas encore de compte?")
                Button(action: {
                    self.willMoveToSignUpScreen = true
                }, label: {
                    Text("Inscrivez-vous ici")
                })
            }
            .padding(.bottom, 20)
        }
        .navigate(to: HomeView(), when: $willMoveToNextScreen)
        .navigate(to: SignUpView(), when: $willMoveToSignUpScreen)
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
