//
//  DetailAnimalFormView.swift
//  AnimalzGraphQL
//
//  Created by Nguyen Cindy on 18/09/2021.
//

import SwiftUI

struct SecondAnimalFormView: View {
    @State private var selectedRace = ""
    @State private var selectedSpecie = ""
    @State private var selectedGender: Gender = .female
    @State private var selectedColor = ""
    @State private var species = ["Chat", "Chien", "Oiseau", "Autre"]
    @State private var races = ["race1", "race2", "race3" ,"Autre"]
    @State private var colors = ["Noir", "Blanc", "Roux" ,"Marron"]
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Genre")
                .fontWeight(.bold)
                .font(.body)
                .foregroundColor(.orange)
            Picker("", selection: $selectedGender) {
                ForEach(Gender.allCases, id: \.self) { value in
                    Text(value.rawValue).tag(value)
                }
            }.pickerStyle(SegmentedPickerStyle())
            Text("Espèce")
                .fontWeight(.bold)
                .font(.body)
                .foregroundColor(.orange)
            Picker("", selection: $selectedSpecie) {
                ForEach(species, id: \.self) {
                    Text($0)
                }
            }.pickerStyle(SegmentedPickerStyle())
            
            if self.selectedSpecie != "" {
                Text("Race")
                    .fontWeight(.bold)
                    .font(.body)
                    .foregroundColor(.orange)
                Picker("", selection: $selectedRace) {
                    ForEach(races, id: \.self) {
                        Text($0)
                    }
                }.pickerStyle(SegmentedPickerStyle())
            }
            
            if self.selectedRace != "" {
                Text("Couleur du pelage")
                    .fontWeight(.bold)
                    .font(.body)
                    .foregroundColor(.orange)
                Picker("", selection: $selectedColor) {
                    ForEach(colors, id: \.self) {
                        Text($0)
                    }
                }.pickerStyle(SegmentedPickerStyle())
            }
        }
    }
}

struct SecondAnimalFormView_Previews: PreviewProvider {
    static var previews: some View {
        SecondAnimalFormView()
    }
}
