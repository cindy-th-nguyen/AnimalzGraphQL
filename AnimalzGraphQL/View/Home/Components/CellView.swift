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
                    Text("25 ans")
                        .foregroundColor(.white)
                        .fontWeight(.bold)
                        .font(.headline)
                    Text("Male")
                        .foregroundColor(.white)
                        .fontWeight(.bold)
                        .font(.headline)
                }
                .padding(.bottom, 10)
                .padding(.leading, 20)
                .background(Color.black.opacity(0.4))
                .cornerRadius(20)
                Spacer()
                Button(action: {}) {
                    Image(systemName: "arrow.right").foregroundColor(.black).padding()
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
