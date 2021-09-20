//
//  AnnoncementFormView.swift
//  AnimalzGraphQL
//
//  Created by Nguyen Cindy on 17/09/2021.
//

import SwiftUI

struct AnnoncementFormView: View {
    @State private var message = ""
    @State private var textStyle = UIFont.TextStyle.body
    
    var body: some View {
        TextView(text: $message, textStyle: $textStyle)
            .padding(.horizontal)
    }
}

struct AnnoncementFormView_Previews: PreviewProvider {
    static var previews: some View {
        AnnoncementFormView()
    }
}
