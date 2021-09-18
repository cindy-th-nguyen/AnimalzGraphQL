//
//  FirstAnimalFormView.swift
//  AnimalzGraphQL
//
//  Created by Nguyen Cindy on 18/09/2021.
//

import SwiftUI

struct FirstAnimalFormView: View {
    @State private var showingImagePicker = false
    @State private var inputImage: UIImage?
    @State private var image: Image?
    @State private var name: String = ""
    @State private var age: String = ""
    @State private var weight: String = ""
    @State private var height: String = ""
    @State var dynamicSize: CGFloat = 100
    
    func loadImage() {
        guard let inputImage = inputImage else { return }
        image = Image(uiImage: inputImage)
    }
    
    var body: some View {
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
    }
}

struct FirstAnimalFormView_Previews: PreviewProvider {
    static var previews: some View {
        FirstAnimalFormView()
    }
}
