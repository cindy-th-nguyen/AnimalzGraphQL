//
//  AnnouncementListView.swift
//  AnimalzGraphQL
//
//  Created by Oudjama on 21/09/2021.
//

import SwiftUI

struct AnnouncementListView: View {
    
    @State var annoucementList: [AnnonceModel] = []
    @State var offsetLocal: Int = 0
    
    func fetch(offset:Int) {
        Network.shared.apollo.fetch(query: AnnonceLoaderQuery(pagination: PaginationInput(limit: 10, offset: offset))) {
            result in
            switch result {
            case .success(let graphQLResult):
                DispatchQueue.main.async {
                    if let annonce = graphQLResult.data?.annoncesLoader {
                        annonce.forEach { ann in
                            self.annoucementList.append(AnnonceModel(title: ann?.fragments.allAnnoucementFields.title ?? "no title"))
                        }
                    }
                    self.annoucementList.forEach { annL in
                        print("FETCH ANNONCE SUCCES :\(annL.title)")
                    }
                }
            case .failure(let error):
                print("error : \(error)")
            }
        }
        
        self.annoucementList.forEach { annL in
            print("FETCH ANNONCE :\(annL.title)")
        }
    }
    
    var body: some View {
        VStack{
            NavigationView {
                List(self.annoucementList) { announcement in
                    AnnouncementCellView(name: announcement.title)
                    }
            }.onAppear(){
                fetch(offset: offsetLocal)
            }
            .navigationBarBackButtonHidden(false)
            .navigationTitle("ANNONCES")
            Button {
                self.offsetLocal +=  11
                fetch(offset: offsetLocal)
            } label: {
                Text("FETCH")
            }

        }
        }
}

struct AnnouncementListView_Previews: PreviewProvider {
    static var previews: some View {
        AnnouncementListView()
    }
}
