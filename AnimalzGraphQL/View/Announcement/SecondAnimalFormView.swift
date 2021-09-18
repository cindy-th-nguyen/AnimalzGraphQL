//
//  DetailAnimalFormView.swift
//  AnimalzGraphQL
//
//  Created by Nguyen Cindy on 18/09/2021.
//

import SwiftUI

struct SecondAnimalFormView: View {
    @State private var selectedRace: RaceEnum? = .shiba
    @State private var selectedSpecie: SpeciesEnum?
    @State private var selectedGender: AnimalGender? = .female
    @State private var selectedColor: FurColorEnum? = .blue
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Genre")
                .fontWeight(.bold)
                .font(.body)
                .foregroundColor(.orange)
            Picker("", selection: $selectedGender) {
                ForEach(AnimalGender.allCases, id: \.self) { value in
                    Text(value.rawValue).tag(value)
                }
            }.pickerStyle(SegmentedPickerStyle())
            Text("Espèce")
                .fontWeight(.bold)
                .font(.body)
                .foregroundColor(.orange)
            Picker("", selection: $selectedSpecie) {
                ForEach(SpeciesEnum.allCases, id: \.self) { value in
                    Text(value.rawValue).tag(value)
                }
            }.pickerStyle(SegmentedPickerStyle())
            
            if self.selectedSpecie == nil {
                Text("Race")
                    .fontWeight(.bold)
                    .font(.body)
                    .foregroundColor(.orange)
                Picker("", selection: $selectedRace) {
                    ForEach(RaceEnum.allCases, id: \.self) { value in
                        Text(value.rawValue).tag(value)
                    }
                }.pickerStyle(SegmentedPickerStyle())
            }
            
            if self.selectedRace?.rawValue == "" {
                Text("Couleur du pelage")
                    .fontWeight(.bold)
                    .font(.body)
                    .foregroundColor(.orange)
                Picker("", selection: $selectedColor) {
                    ForEach(FurColorEnum.allCases, id: \.self) { value in
                        Text(value.rawValue).tag(value)
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
