//
//  Apollo.swift
//  AnimalzGraphQL
//
//  Created by Oudjama on 16/09/2021.
//

import Foundation
import Apollo

class Network {
    static let shared = Network()
    lazy var apollo = ApolloClient(url: URL(string: "http://localhost:4000/graphql")!)
}
