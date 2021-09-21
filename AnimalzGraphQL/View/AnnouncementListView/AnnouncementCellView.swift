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
                    VStack(alignment: .leading) {
                        Text(self.name)
                        Text("Description")
                    }
        }
    }
}

struct AnnouncementCellView_Previews: PreviewProvider {
    static var previews: some View {
        AnnouncementCellView(name: "test")
    }
}
