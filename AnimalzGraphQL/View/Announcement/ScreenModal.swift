//
//  ScreenModel.swift
//  AnimalzGraphQL
//
//  Created by Nguyen Cindy on 15/09/2021.
//

import SwiftUI

struct ScreenModal: View {
    @State private var showingImagePicker = false
    @State private var inputImage: UIImage?
    @State private var image: Image?
    @State private var name: String = ""
    @State private var age: String = ""
    @State var dynamicSize: CGFloat = 100
    @State private var selectedSpecie = ""
    @State private var selectedRace = ""
    @State private var species = ["Chat", "Chien", "Oiseau", "Autre"]
    @State private var races = ["race1", "race2", "race3" ,"Autre"]
    
    var body: some View {
        VStack {
            Text("Publier une annonce")
                .padding()
                .font(.title)
                .foregroundColor(.white)
                .frame(minWidth: 0, maxWidth: .infinity)
                .background(Color.orange)
                .cornerRadius(15)
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
            }
            .padding(.bottom, 10)
            
            VStack(alignment: .leading) {
                Text("Espèce")
                    .fontWeight(.bold)
                    .font(.body)
                    .foregroundColor(.orange)
                Picker("Select a color", selection: $selectedSpecie) {
                    ForEach(species, id: \.self) {
                        Text($0)
                    }
                }.pickerStyle(SegmentedPickerStyle())
                
                if self.selectedSpecie != "" {
                    Text("Race")
                        .fontWeight(.bold)
                        .font(.body)
                        .foregroundColor(.orange)
                    Picker("Select a color", selection: $selectedRace) {
                        ForEach(races, id: \.self) {
                            Text($0)
                        }
                    }.pickerStyle(SegmentedPickerStyle())
                }
                Spacer()
                Button(action: {
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
        }
        .sheet(isPresented: $showingImagePicker, onDismiss: loadImage) {
            ImagePicker(image: self.$inputImage)
        }
        .padding()
    }
    
    func loadImage() {
        guard let inputImage = inputImage else { return }
        image = Image(uiImage: inputImage)
    }
}
