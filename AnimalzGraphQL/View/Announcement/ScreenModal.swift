//
//  ScreenModel.swift
//  AnimalzGraphQL
//
//  Created by Nguyen Cindy on 15/09/2021.
//

import SwiftUI

enum Actions: String, CaseIterable, Equatable {
    case createAnnoncement = "Créer une annonce"
    case addAnimal = "Ajouter un animal"
}

struct ScreenModal: View {
    @State private var selectedAction = Actions.createAnnoncement
    @State private var actions: Actions = .createAnnoncement
    var body: some View {
        VStack {
            Picker("Action", selection: $selectedAction) {
                ForEach(Actions.allCases, id: \.self) { value in
                    Text(value.rawValue)
                        .tag(value)
                }
            }
            .pickerStyle(SegmentedPickerStyle())
            .padding(.top, 15)
            
            switch selectedAction {
            case .createAnnoncement:
                AnnoncementFormView()
            case .addAnimal:
                AnimalFormView()
            }
        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .topLeading)
    }
}
