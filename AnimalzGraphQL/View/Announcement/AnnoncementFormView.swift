//
//  AnnoncementFormView.swift
//  AnimalzGraphQL
//
//  Created by Nguyen Cindy on 17/09/2021.
//

import SwiftUI

struct AnnoncementFormView: View {
    @Environment(\.presentationMode) private var presentationMode
    @State private var selectedTypes: AnnoucementType = .vente
    @State private var selectedName = 0
    @State private var message = ""
    @State private var title = ""
    @State private var textStyle = UIFont.TextStyle.body
    @ObservedObject private var appSetting = AppSetting.shared
    
    func getArrayOfNames() -> [String] {
        var names: [String] = []
       appSetting.userFields?.animalList?.forEach({ animal in
            names.append(animal?.fragments.allAnimalFields.name ?? "")
        })
        return names
    }
    
    func getId(index: Int) -> String {
        var animals: [String] = []
        appSetting.userFields?.animalList?.forEach({ animal in
            guard let animal = animal else {
                return
            }
            animals.append(animal.fragments.allAnimalFields.animalId ?? "")
        })
        return animals[index]
    }
    var body: some View {
        VStack {
            Text("Nouvelle annonce")
                .font(.title)
                .foregroundColor(.orange)
            Text("Nom de l'animal")
            Picker("Names", selection: $selectedName) {
                ForEach(0 ..< getArrayOfNames().count) {
                    Text(self.getArrayOfNames()[$0])
                }
            }
            .pickerStyle(SegmentedPickerStyle())
            
            Text("Type d'annonce")
            Picker("Types", selection: $selectedTypes) {
                ForEach(AnnoucementType.allCases, id: \.self) { value in
                    Text(value.rawValue).tag(value)
                }
            }
            .pickerStyle(SegmentedPickerStyle())
            
            Text("Titre de l'annonce")
            TextField("Titre", text: $title)
            Text("Description de l'annonce")
            TextEditor(text: $message)
                .padding()
                .overlay(RoundedRectangle(cornerRadius: 25)
                            .stroke(Color.orange, lineWidth: 2))
                .padding()
            
            Button(action: {
                // REQUETE ANNONCE
                
                self.presentationMode.wrappedValue.dismiss()
                Network.shared.apollo.perform(mutation: NewAnnoucementMutationWithVariablesMutation(annoucement: newAnnoucementInput(animalId: getId(index: self.selectedName), title: self.title, description: self.message, announcementType: self.selectedTypes)))
                
            }, label: {
                Text("Valider")
            })
        }
        
    }
}

struct AnnoncementFormView_Previews: PreviewProvider {
    static var previews: some View {
        AnnoncementFormView()
    }
}
