//
//  CellView.swift
//  AnimalzGraphQL
//
//  Created by Nguyen Cindy on 15/09/2021.
//

import SwiftUI

struct AnnouncementCellView: View {
    var name: String
    var body: some View {
        HStack {
                    Image(systemName: "photo")
                        .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    VStack(alignment: .leading) {
                        Text(name)
                            .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        Text("Description")
                            .font(.subheadline)
                    }
                }
    }
}

struct AnnouncementCellView_Previews: PreviewProvider {
    static var previews: some View {
        AnnouncementCellView(name: "test")
    }
}
