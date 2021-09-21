//
//  AnnouncementListView.swift
//  AnimalzGraphQL
//
//  Created by Oudjama on 21/09/2021.
//

import SwiftUI





struct AnnouncementListView: View {
    
    @State var annoucementList: [AnnonceModel] = []
    @State var test: [String] = ["a", "b", "c"]
    
    var body: some View {
        NavigationView {
            List {
                ForEach(annoucementList) { announcement in
                    AnnouncementCellView(name: announcement.title)
                }
            }
        }
        .navigationTitle("ANNONCES")
        .onAppear(perform: {
            Network.shared.apollo.fetch(query: AnnonceLoaderQuery(pagination: PaginationInput(limit: 10, offset: 0))) {
                result in
                switch result {
                case .success(let graphQLResult):
                    if let annonce = graphQLResult.data?.annoncesLoader {
                        annonce.forEach { ann in
                            let title = ann?.fragments.allAnnoucementFields.title
                            annoucementList.append(AnnonceModel(title: title ?? "no title"))
                        }
                    }
                case .failure(let error):
                    print("errore : \(error)")
                }
            }
        })
    }
        
        

    
}

struct AnnouncementListView_Previews: PreviewProvider {
    static var previews: some View {
        AnnouncementListView()
    }
}
