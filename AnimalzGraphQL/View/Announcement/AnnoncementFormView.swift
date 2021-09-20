//
//  AnnoncementFormView.swift
//  AnimalzGraphQL
//
//  Created by Nguyen Cindy on 17/09/2021.
//

import SwiftUI

struct AnnoncementFormView: View {
    var arrayOfNames = ["Bobby", "Pilou", "Pépé", "Ora"]
    var arrayOfTypes = ["Rencontre amicale", "Copuler", "Vente"]
    @State private var selectedTypes = 0
    @State private var selectedIndex = 0
    @State private var message = ""
    @State private var textStyle = UIFont.TextStyle.body
    
    
    var body: some View {
        VStack {
            Text("Nouvelle annonce")
                .font(.title)
                .foregroundColor(.orange)
            Text("Nom de l'animal")
            Picker("Names", selection: $selectedIndex) {
                ForEach(0 ..< arrayOfNames.count) {
                    Text(self.arrayOfNames[$0])
                }
            }
            .pickerStyle(SegmentedPickerStyle())
            
            Text("Type d'annonce")
            Picker("Types", selection: $selectedTypes) {
                ForEach(0 ..< arrayOfTypes.count) {
                    Text(self.arrayOfTypes[$0])
                }
            }
            .pickerStyle(SegmentedPickerStyle())
            
            TextEditor(text: $message)
                .padding()
                .overlay(RoundedRectangle(cornerRadius: 25)
                            .stroke(Color.orange, lineWidth: 2))
                .padding()
            
            Button(action: {
                // REQUETE ANNONCE
                
            }, label: {
                Text("Valider")
            })
            
            Spacer()
        }
        
    }
}

struct AnnoncementFormView_Previews: PreviewProvider {
    static var previews: some View {
        AnnoncementFormView()
    }
}
