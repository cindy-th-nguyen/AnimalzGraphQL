//
//  Animal.swift
//  AnimalzGraphQL
//
//  Created by Nguyen Cindy on 16/09/2021.
//

import SwiftUI

struct AnimalFormView: View {
    @Environment(\.presentationMode) private var presentationMode
    @State var isPressed: Bool = false
    
    var body: some View {
        VStack {
            if !self.isPressed {
                FirstAnimalFormView()
                Spacer()
                Button(action: {
                    self.isPressed = true
                }, label: {
                    Text("Suivant")
                        .fontWeight(.bold)
                        .font(.headline)
                        .frame(minWidth: 0, maxWidth: .infinity)
                        .padding()
                        .foregroundColor(.white)
                        .background(Color.orange)
                        .cornerRadius(25)
                })
            }
            
            if self.isPressed {
                SecondAnimalFormView()
                Spacer()
                Button(action: {
                    self.presentationMode.wrappedValue.dismiss()
                    //Exemple insert base Animal
//                    Network.shared.apollo.perform(mutation: NewAnimalMutationWithVariablesMutation(animal: newAnimalInput(ownerId: "1e87258e-ce3d-4dda-823b-843f194dfa7f", name: self.name, specie: SpeciesEnum(rawValue: self.selectedSpecie), gender: AnimalGender.male, race: RaceEnum.shiba, description: "AnimalDescriptionWithVariablesMutation", age: Int(self.age), isCastrated: true, furColor: FurColorEnum.blue, weight: 10, size: 10, photo: "AnimalPhotoWithVariablesMutation")))
                }, label: {
                    Text("Terminer")
                        .fontWeight(.bold)
                        .font(.headline)
                        .frame(minWidth: 0, maxWidth: .infinity)
                        .padding()
                        .foregroundColor(.white)
                        .background(Color.orange)
                        .cornerRadius(25)
                })
            }
            
            
        }
        .padding()
    }
}

struct Animal_Previews: PreviewProvider {
    static var previews: some View {
        AnimalFormView()
    }
}
