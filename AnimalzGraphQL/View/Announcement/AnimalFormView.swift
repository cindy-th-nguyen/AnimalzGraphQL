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
    @State private var selectedRace: RaceEnum = .shiba
    @State private var selectedSpecie: SpeciesEnum = .dog
    @State private var selectedGender: AnimalGender = .female
    @State private var selectedColor: FurColorEnum = .blue
    @State private var showingImagePicker = false
    @State private var inputImage: UIImage?
    @State private var image: Image?
    @State private var name: String = ""
    @State private var age: String = ""
    @State private var weight: String = ""
    @State private var height: String = ""
    @State private var isCastrated: Bool = true
    @State var dynamicSize: CGFloat = 100
    @ObservedObject private var appSetting = AppSetting.shared
    
    func loadImage() {
        guard let inputImage = inputImage else { return }
        image = Image(uiImage: inputImage)
    }
    
    var body: some View {
        VStack {
            if !self.isPressed {
                ZStack {
                    if image != nil {
                        image?
                            .resizable()
                            .scaledToFill()
                            .clipShape(Circle())
                            .frame(width: dynamicSize, height: dynamicSize)
                    } else {
                        VStack() {
                            Image(systemName: "photo")
                                .resizable()
                                .scaledToFill()
                                .foregroundColor(.white)
                                .padding(30)
                        }
                        .frame(width: dynamicSize, height: dynamicSize)
                        .background(Color.secondary)
                        .clipShape(Circle())
                        .padding()
                    }
                }
                .onTapGesture {
                    self.showingImagePicker = true
                }
                
                VStack {
                    TextField("Nom", text: $name)
                        .disableAutocorrection(true)
                        .padding()
                        .overlay(
                            RoundedRectangle(cornerRadius: 25)
                                .stroke(Color.orange, lineWidth: 2)
                        )
                    
                    TextField("Age", text: $age)
                        .keyboardType(.numberPad)
                        .padding()
                        .overlay(
                            RoundedRectangle(cornerRadius: 25)
                                .stroke(Color.orange, lineWidth: 2)
                        )
                    TextField("Taille", text: $weight)
                        .keyboardType(.numberPad)
                        .padding()
                        .overlay(
                            RoundedRectangle(cornerRadius: 25)
                                .stroke(Color.orange, lineWidth: 2)
                        )
                    TextField("Poids", text: $height)
                        .keyboardType(.numberPad)
                        .padding()
                        .overlay(
                            RoundedRectangle(cornerRadius: 25)
                                .stroke(Color.orange, lineWidth: 2)
                        )
                }
                .padding(.bottom, 10)
                .sheet(isPresented: $showingImagePicker, onDismiss: loadImage) {
                    ImagePicker(image: self.$inputImage)
                }
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
                    
                    
                    Text("Race")
                        .fontWeight(.bold)
                        .font(.body)
                        .foregroundColor(.orange)
                    Picker("", selection: $selectedRace) {
                        ForEach(RaceEnum.allCases, id: \.self) { value in
                            Text(value.rawValue).tag(value)
                        }
                    }.pickerStyle(SegmentedPickerStyle())
                    
                    
                    
                    Text("Couleur du pelage")
                        .fontWeight(.bold)
                        .font(.body)
                        .foregroundColor(.orange)
                    Picker("", selection: $selectedColor) {
                        ForEach(FurColorEnum.allCases, id: \.self) { value in
                            Text(value.rawValue).tag(value)
                        }
                    }.pickerStyle(SegmentedPickerStyle())
                    
                    Toggle("Castré.e ?", isOn: $isCastrated)
                    
                }
                Spacer()
                Button(action: {
                    guard let userFields = appSetting.userFields else {
                        return
                    }
                    //Exemple insert base Animal
                    // TO DO : Fur color
                    Network.shared.apollo.perform(mutation: NewAnimalMutationWithVariablesMutation(animal: newAnimalInput(ownerId: userFields.userId, name: self.name, specie: SpeciesEnum(rawValue: self.selectedSpecie.rawValue), gender: AnimalGender(rawValue: self.selectedGender.rawValue), race: RaceEnum(rawValue: self.selectedRace.rawValue), description: "", age: Int(self.age), isCastrated: self.isCastrated, furColor: FurColorEnum.other, weight: 10, size: 10, photo: self.inputImage?.description)))
                    self.presentationMode.wrappedValue.dismiss()

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
