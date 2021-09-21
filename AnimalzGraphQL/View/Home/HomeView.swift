//
//  HomeView.swift
//  AnimalzGraphQL
//
//  Created by Nguyen Cindy on 15/09/2021.
//

import SwiftUI

struct HomeView: View {
    @State var show = false
    @State var txt = ""
    @State var data = ["cat_mock"]
    @State var testQueryGraphQL = ""
    @State var showModal: Bool = false
    @ObservedObject private var appSetting = AppSetting.shared
    
    var body : some View {
        VStack(spacing: 0) {
            HStack {
                if !self.show {
                    Text("Animalz")
                        .fontWeight(.bold)
                        .font(.title)
                        .foregroundColor(.white)
                }
                Spacer(minLength: 0)
                HStack {
                    if self.show {
                        Image(systemName: "magnifyingglass")
                            .padding(.horizontal, 8)
                        TextField("Que recherchez-vous ?", text: self.$txt)
                        Button(action: {
                            withAnimation {
                                self.txt = ""
                                self.show.toggle()
                            }
                        }) {
                            Image(systemName: "xmark")
                                .foregroundColor(.black)
                        }
                        .padding(.horizontal, 8)
                    } else {
                        Button(action: {
                            withAnimation {
                                self.show.toggle()
                            }
                        }) {
                            Image(systemName: "magnifyingglass")
                                .foregroundColor(.black)
                                .padding(10)
                        }
                    }
                }
                .padding(self.show ? 10 : 0)
                .background(Color.white)
                .cornerRadius(20)
            }
            .padding(.top, (UIApplication.shared.windows.first?.safeAreaInsets.top)! + 15)
            .padding(.horizontal)
            .padding(.bottom, 10)
            .background(Color.orange)
            
            
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 15) {
                    if self.txt != "" {
                        if data.filter({$0.lowercased().contains(self.txt.lowercased())}).count == 0 {
                            Text("No Results Found").padding(.top, 10)
                        } else {
                            ForEach(data.filter({$0.lowercased().contains(self.txt.lowercased())}),id: \.self){ i in
                                CellView(image: i, name: "Normouss")
                            }
                        }
                    } else {
                        ForEach(data,id: \.self){ i in
                            CellView(image: i, name: "Normouss")
                        }
                    }
                }
                .padding(.horizontal, 15)
                .padding(.top, 10)
            }
//            Text(testQueryGraphQL).onAppear(perform: {
//                Network.shared.apollo.fetch(query: SpecificQueryQuery()) { result in
//                    switch result{
//                    case .success(let graphQLResult):
//                        if let users = graphQLResult.data?.users {
//                            self.testQueryGraphQL = "first user json: \(users[0]?.firstName ?? "No name found")"
//                            users.forEach { user in
//                                print("user firstName : \(user?.firstName ?? "No name found")")
//                            }
//                        }
//                    case .failure(let error):
//                        print("Error : \(error)")
//                    }
//                }
//            })
            
            HStack {
                Spacer()
                Button(action: {
                    self.showModal.toggle()
                }) {
                    Image(systemName: "plus")
                        .foregroundColor(.white)
                        .padding()
                }
                .background(Color.orange)
                .clipShape(Circle())
                .padding()
            }
        }
        .edgesIgnoringSafeArea(.top)
        .navigationViewStyle(StackNavigationViewStyle())
        .sheet(isPresented: self.$showModal) { ScreenModal() }
    }
}

class Host: UIHostingController<ContentView> {
    override var preferredStatusBarStyle: UIStatusBarStyle{
        return .lightContent
    }
}
