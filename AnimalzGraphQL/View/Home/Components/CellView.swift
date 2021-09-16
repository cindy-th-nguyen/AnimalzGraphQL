//
//  CellView.swift
//  AnimalzGraphQL
//
//  Created by Nguyen Cindy on 15/09/2021.
//

import SwiftUI

struct CellView: View {
    var image: String
    var name: String
    var body: some View {
        ZStack(alignment: .bottomTrailing) {
            Image(image)
                .resizable()
                .frame(height: 200)
                .cornerRadius(20)
            HStack {
                VStack(alignment: .leading) {
                    Text(name)
                        .foregroundColor(.white)
                        .fontWeight(.bold)
                        .font(.title)
                        .shadow(color: Color.black, radius: 15)
                    Text("25 ans")
                        .foregroundColor(.white)
                        .fontWeight(.bold)
                        .font(.headline)
                        .shadow(color: Color.black, radius: 15)
                    Text("Male")
                        .foregroundColor(.white)
                        .fontWeight(.bold)
                        .font(.headline)
                        .shadow(color: Color.black, radius: 15)
                }
//                .padding(.bottom, 10)
                .padding(10)
//                .background(Color.black.opacity(0.4))
//                .cornerRadius(20)
                Spacer()
                Button(action: {}) {
                    Image(systemName: "arrow.right")
                        .foregroundColor(.black)
                        .padding()
                }
                .background(Color.white)
                .clipShape(Circle())
                .padding()
            }
        }
    }
}

struct CellView_Previews: PreviewProvider {
    static var previews: some View {
        CellView(image: "", name: "")
    }
}
