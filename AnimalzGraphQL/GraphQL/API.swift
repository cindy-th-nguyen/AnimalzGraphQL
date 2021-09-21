// @generated
//  This file was automatically generated and should not be edited.

import Apollo
import Foundation

public struct PaginationInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  /// - Parameters:
  ///   - limit
  ///   - offset
  public init(limit: Swift.Optional<Int?> = nil, offset: Swift.Optional<Int?> = nil) {
    graphQLMap = ["limit": limit, "offset": offset]
  }

  public var limit: Swift.Optional<Int?> {
    get {
      return graphQLMap["limit"] as? Swift.Optional<Int?> ?? Swift.Optional<Int?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "limit")
    }
  }

  public var offset: Swift.Optional<Int?> {
    get {
      return graphQLMap["offset"] as? Swift.Optional<Int?> ?? Swift.Optional<Int?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "offset")
    }
  }
}

public struct newLoginInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  /// - Parameters:
  ///   - email
  ///   - password
  ///   - clientMutationId
  public init(email: Swift.Optional<String?> = nil, password: Swift.Optional<String?> = nil, clientMutationId: Swift.Optional<String?> = nil) {
    graphQLMap = ["email": email, "password": password, "clientMutationId": clientMutationId]
  }

  public var email: Swift.Optional<String?> {
    get {
      return graphQLMap["email"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "email")
    }
  }

  public var password: Swift.Optional<String?> {
    get {
      return graphQLMap["password"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "password")
    }
  }

  public var clientMutationId: Swift.Optional<String?> {
    get {
      return graphQLMap["clientMutationId"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "clientMutationId")
    }
  }
}

public struct newUserInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  /// - Parameters:
  ///   - lastName
  ///   - firstName
  ///   - city
  ///   - phoneNumber
  ///   - email
  ///   - password
  ///   - gender
  ///   - clientMutationId
  public init(lastName: Swift.Optional<String?> = nil, firstName: Swift.Optional<String?> = nil, city: Swift.Optional<String?> = nil, phoneNumber: Swift.Optional<String?> = nil, email: Swift.Optional<String?> = nil, password: Swift.Optional<String?> = nil, gender: Swift.Optional<HumanGender?> = nil, clientMutationId: Swift.Optional<String?> = nil) {
    graphQLMap = ["lastName": lastName, "firstName": firstName, "city": city, "phoneNumber": phoneNumber, "email": email, "password": password, "gender": gender, "clientMutationId": clientMutationId]
  }

  public var lastName: Swift.Optional<String?> {
    get {
      return graphQLMap["lastName"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "lastName")
    }
  }

  public var firstName: Swift.Optional<String?> {
    get {
      return graphQLMap["firstName"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "firstName")
    }
  }

  public var city: Swift.Optional<String?> {
    get {
      return graphQLMap["city"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "city")
    }
  }

  public var phoneNumber: Swift.Optional<String?> {
    get {
      return graphQLMap["phoneNumber"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "phoneNumber")
    }
  }

  public var email: Swift.Optional<String?> {
    get {
      return graphQLMap["email"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "email")
    }
  }

  public var password: Swift.Optional<String?> {
    get {
      return graphQLMap["password"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "password")
    }
  }

  public var gender: Swift.Optional<HumanGender?> {
    get {
      return graphQLMap["gender"] as? Swift.Optional<HumanGender?> ?? Swift.Optional<HumanGender?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "gender")
    }
  }

  public var clientMutationId: Swift.Optional<String?> {
    get {
      return graphQLMap["clientMutationId"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "clientMutationId")
    }
  }
}

/// The possible gender for human.
public enum HumanGender: RawRepresentable, Equatable, Hashable, CaseIterable, Apollo.JSONDecodable, Apollo.JSONEncodable {
  public typealias RawValue = String
  case female
  case male
  case other
  /// Auto generated constant for unknown enum values
  case __unknown(RawValue)

  public init?(rawValue: RawValue) {
    switch rawValue {
      case "FEMALE": self = .female
      case "MALE": self = .male
      case "OTHER": self = .other
      default: self = .__unknown(rawValue)
    }
  }

  public var rawValue: RawValue {
    switch self {
      case .female: return "FEMALE"
      case .male: return "MALE"
      case .other: return "OTHER"
      case .__unknown(let value): return value
    }
  }

  public static func == (lhs: HumanGender, rhs: HumanGender) -> Bool {
    switch (lhs, rhs) {
      case (.female, .female): return true
      case (.male, .male): return true
      case (.other, .other): return true
      case (.__unknown(let lhsValue), .__unknown(let rhsValue)): return lhsValue == rhsValue
      default: return false
    }
  }

  public static var allCases: [HumanGender] {
    return [
      .female,
      .male,
      .other,
    ]
  }
}

public struct newAnimalInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  /// - Parameters:
  ///   - ownerId
  ///   - name
  ///   - specie
  ///   - gender
  ///   - race
  ///   - description
  ///   - age
  ///   - isCastrated
  ///   - furColor
  ///   - weight
  ///   - size
  ///   - photo
  ///   - clientMutationId
  public init(ownerId: Swift.Optional<GraphQLID?> = nil, name: Swift.Optional<String?> = nil, specie: Swift.Optional<SpeciesEnum?> = nil, gender: Swift.Optional<AnimalGender?> = nil, race: Swift.Optional<RaceEnum?> = nil, description: Swift.Optional<String?> = nil, age: Swift.Optional<Int?> = nil, isCastrated: Swift.Optional<Bool?> = nil, furColor: Swift.Optional<FurColorEnum?> = nil, weight: Swift.Optional<Int?> = nil, size: Swift.Optional<Int?> = nil, photo: Swift.Optional<String?> = nil, clientMutationId: Swift.Optional<String?> = nil) {
    graphQLMap = ["ownerID": ownerId, "name": name, "specie": specie, "gender": gender, "race": race, "description": description, "age": age, "isCastrated": isCastrated, "furColor": furColor, "weight": weight, "size": size, "photo": photo, "clientMutationId": clientMutationId]
  }

  public var ownerId: Swift.Optional<GraphQLID?> {
    get {
      return graphQLMap["ownerID"] as? Swift.Optional<GraphQLID?> ?? Swift.Optional<GraphQLID?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ownerID")
    }
  }

  public var name: Swift.Optional<String?> {
    get {
      return graphQLMap["name"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "name")
    }
  }

  public var specie: Swift.Optional<SpeciesEnum?> {
    get {
      return graphQLMap["specie"] as? Swift.Optional<SpeciesEnum?> ?? Swift.Optional<SpeciesEnum?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "specie")
    }
  }

  public var gender: Swift.Optional<AnimalGender?> {
    get {
      return graphQLMap["gender"] as? Swift.Optional<AnimalGender?> ?? Swift.Optional<AnimalGender?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "gender")
    }
  }

  public var race: Swift.Optional<RaceEnum?> {
    get {
      return graphQLMap["race"] as? Swift.Optional<RaceEnum?> ?? Swift.Optional<RaceEnum?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "race")
    }
  }

  public var description: Swift.Optional<String?> {
    get {
      return graphQLMap["description"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "description")
    }
  }

  public var age: Swift.Optional<Int?> {
    get {
      return graphQLMap["age"] as? Swift.Optional<Int?> ?? Swift.Optional<Int?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "age")
    }
  }

  public var isCastrated: Swift.Optional<Bool?> {
    get {
      return graphQLMap["isCastrated"] as? Swift.Optional<Bool?> ?? Swift.Optional<Bool?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "isCastrated")
    }
  }

  public var furColor: Swift.Optional<FurColorEnum?> {
    get {
      return graphQLMap["furColor"] as? Swift.Optional<FurColorEnum?> ?? Swift.Optional<FurColorEnum?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "furColor")
    }
  }

  public var weight: Swift.Optional<Int?> {
    get {
      return graphQLMap["weight"] as? Swift.Optional<Int?> ?? Swift.Optional<Int?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "weight")
    }
  }

  public var size: Swift.Optional<Int?> {
    get {
      return graphQLMap["size"] as? Swift.Optional<Int?> ?? Swift.Optional<Int?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "size")
    }
  }

  public var photo: Swift.Optional<String?> {
    get {
      return graphQLMap["photo"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "photo")
    }
  }

  public var clientMutationId: Swift.Optional<String?> {
    get {
      return graphQLMap["clientMutationId"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "clientMutationId")
    }
  }
}

/// The possible race for animals.
public enum SpeciesEnum: RawRepresentable, Equatable, Hashable, CaseIterable, Apollo.JSONDecodable, Apollo.JSONEncodable {
  public typealias RawValue = String
  case dog
  case cat
  case other
  /// Auto generated constant for unknown enum values
  case __unknown(RawValue)

  public init?(rawValue: RawValue) {
    switch rawValue {
      case "DOG": self = .dog
      case "CAT": self = .cat
      case "OTHER": self = .other
      default: self = .__unknown(rawValue)
    }
  }

  public var rawValue: RawValue {
    switch self {
      case .dog: return "DOG"
      case .cat: return "CAT"
      case .other: return "OTHER"
      case .__unknown(let value): return value
    }
  }

  public static func == (lhs: SpeciesEnum, rhs: SpeciesEnum) -> Bool {
    switch (lhs, rhs) {
      case (.dog, .dog): return true
      case (.cat, .cat): return true
      case (.other, .other): return true
      case (.__unknown(let lhsValue), .__unknown(let rhsValue)): return lhsValue == rhsValue
      default: return false
    }
  }

  public static var allCases: [SpeciesEnum] {
    return [
      .dog,
      .cat,
      .other,
    ]
  }
}

/// The possible gender for animals.
public enum AnimalGender: RawRepresentable, Equatable, Hashable, CaseIterable, Apollo.JSONDecodable, Apollo.JSONEncodable {
  public typealias RawValue = String
  case female
  case male
  case other
  /// Auto generated constant for unknown enum values
  case __unknown(RawValue)

  public init?(rawValue: RawValue) {
    switch rawValue {
      case "FEMALE": self = .female
      case "MALE": self = .male
      case "OTHER": self = .other
      default: self = .__unknown(rawValue)
    }
  }

  public var rawValue: RawValue {
    switch self {
      case .female: return "FEMALE"
      case .male: return "MALE"
      case .other: return "OTHER"
      case .__unknown(let value): return value
    }
  }

  public static func == (lhs: AnimalGender, rhs: AnimalGender) -> Bool {
    switch (lhs, rhs) {
      case (.female, .female): return true
      case (.male, .male): return true
      case (.other, .other): return true
      case (.__unknown(let lhsValue), .__unknown(let rhsValue)): return lhsValue == rhsValue
      default: return false
    }
  }

  public static var allCases: [AnimalGender] {
    return [
      .female,
      .male,
      .other,
    ]
  }
}

/// The possible race for animals.
public enum RaceEnum: RawRepresentable, Equatable, Hashable, CaseIterable, Apollo.JSONDecodable, Apollo.JSONEncodable {
  public typealias RawValue = String
  case shiba
  case other
  /// Auto generated constant for unknown enum values
  case __unknown(RawValue)

  public init?(rawValue: RawValue) {
    switch rawValue {
      case "SHIBA": self = .shiba
      case "OTHER": self = .other
      default: self = .__unknown(rawValue)
    }
  }

  public var rawValue: RawValue {
    switch self {
      case .shiba: return "SHIBA"
      case .other: return "OTHER"
      case .__unknown(let value): return value
    }
  }

  public static func == (lhs: RaceEnum, rhs: RaceEnum) -> Bool {
    switch (lhs, rhs) {
      case (.shiba, .shiba): return true
      case (.other, .other): return true
      case (.__unknown(let lhsValue), .__unknown(let rhsValue)): return lhsValue == rhsValue
      default: return false
    }
  }

  public static var allCases: [RaceEnum] {
    return [
      .shiba,
      .other,
    ]
  }
}

/// The possible fur color for animals.
public enum FurColorEnum: RawRepresentable, Equatable, Hashable, CaseIterable, Apollo.JSONDecodable, Apollo.JSONEncodable {
  public typealias RawValue = String
  case blue
  case other
  /// Auto generated constant for unknown enum values
  case __unknown(RawValue)

  public init?(rawValue: RawValue) {
    switch rawValue {
      case "BLUE": self = .blue
      case "OTHER": self = .other
      default: self = .__unknown(rawValue)
    }
  }

  public var rawValue: RawValue {
    switch self {
      case .blue: return "BLUE"
      case .other: return "OTHER"
      case .__unknown(let value): return value
    }
  }

  public static func == (lhs: FurColorEnum, rhs: FurColorEnum) -> Bool {
    switch (lhs, rhs) {
      case (.blue, .blue): return true
      case (.other, .other): return true
      case (.__unknown(let lhsValue), .__unknown(let rhsValue)): return lhsValue == rhsValue
      default: return false
    }
  }

  public static var allCases: [FurColorEnum] {
    return [
      .blue,
      .other,
    ]
  }
}

public struct newAnnoucementInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  /// - Parameters:
  ///   - animalId
  ///   - title
  ///   - description
  ///   - announcementType
  ///   - clientMutationId
  public init(animalId: Swift.Optional<GraphQLID?> = nil, title: Swift.Optional<String?> = nil, description: Swift.Optional<String?> = nil, announcementType: Swift.Optional<AnnoucementType?> = nil, clientMutationId: Swift.Optional<String?> = nil) {
    graphQLMap = ["animalID": animalId, "title": title, "description": description, "announcementType": announcementType, "clientMutationId": clientMutationId]
  }

  public var animalId: Swift.Optional<GraphQLID?> {
    get {
      return graphQLMap["animalID"] as? Swift.Optional<GraphQLID?> ?? Swift.Optional<GraphQLID?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "animalID")
    }
  }

  public var title: Swift.Optional<String?> {
    get {
      return graphQLMap["title"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "title")
    }
  }

  public var description: Swift.Optional<String?> {
    get {
      return graphQLMap["description"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "description")
    }
  }

  public var announcementType: Swift.Optional<AnnoucementType?> {
    get {
      return graphQLMap["announcementType"] as? Swift.Optional<AnnoucementType?> ?? Swift.Optional<AnnoucementType?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "announcementType")
    }
  }

  public var clientMutationId: Swift.Optional<String?> {
    get {
      return graphQLMap["clientMutationId"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "clientMutationId")
    }
  }
}

/// The possible type for annoucement.
public enum AnnoucementType: RawRepresentable, Equatable, Hashable, CaseIterable, Apollo.JSONDecodable, Apollo.JSONEncodable {
  public typealias RawValue = String
  case vente
  case encounter
  case other
  /// Auto generated constant for unknown enum values
  case __unknown(RawValue)

  public init?(rawValue: RawValue) {
    switch rawValue {
      case "VENTE": self = .vente
      case "ENCOUNTER": self = .encounter
      case "OTHER": self = .other
      default: self = .__unknown(rawValue)
    }
  }

  public var rawValue: RawValue {
    switch self {
      case .vente: return "VENTE"
      case .encounter: return "ENCOUNTER"
      case .other: return "OTHER"
      case .__unknown(let value): return value
    }
  }

  public static func == (lhs: AnnoucementType, rhs: AnnoucementType) -> Bool {
    switch (lhs, rhs) {
      case (.vente, .vente): return true
      case (.encounter, .encounter): return true
      case (.other, .other): return true
      case (.__unknown(let lhsValue), .__unknown(let rhsValue)): return lhsValue == rhsValue
      default: return false
    }
  }

  public static var allCases: [AnnoucementType] {
    return [
      .vente,
      .encounter,
      .other,
    ]
  }
}

public final class SpecificQueryQuery: GraphQLQuery {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    query specificQuery {
      users {
        __typename
        ...allUserFields
      }
      animals {
        __typename
        ...allAnimalFields
      }
      annonces {
        __typename
        ...allAnnoucementFields
      }
    }
    """

  public let operationName: String = "specificQuery"

  public var queryDocument: String {
    var document: String = operationDefinition
    document.append("\n" + AllUserFields.fragmentDefinition)
    document.append("\n" + AllAnimalFields.fragmentDefinition)
    document.append("\n" + AllAnnoucementFields.fragmentDefinition)
    return document
  }

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Query"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("users", type: .list(.object(User.selections))),
        GraphQLField("animals", type: .list(.object(Animal.selections))),
        GraphQLField("annonces", type: .list(.object(Annonce.selections))),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(users: [User?]? = nil, animals: [Animal?]? = nil, annonces: [Annonce?]? = nil) {
      self.init(unsafeResultMap: ["__typename": "Query", "users": users.flatMap { (value: [User?]) -> [ResultMap?] in value.map { (value: User?) -> ResultMap? in value.flatMap { (value: User) -> ResultMap in value.resultMap } } }, "animals": animals.flatMap { (value: [Animal?]) -> [ResultMap?] in value.map { (value: Animal?) -> ResultMap? in value.flatMap { (value: Animal) -> ResultMap in value.resultMap } } }, "annonces": annonces.flatMap { (value: [Annonce?]) -> [ResultMap?] in value.map { (value: Annonce?) -> ResultMap? in value.flatMap { (value: Annonce) -> ResultMap in value.resultMap } } }])
    }

    public var users: [User?]? {
      get {
        return (resultMap["users"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [User?] in value.map { (value: ResultMap?) -> User? in value.flatMap { (value: ResultMap) -> User in User(unsafeResultMap: value) } } }
      }
      set {
        resultMap.updateValue(newValue.flatMap { (value: [User?]) -> [ResultMap?] in value.map { (value: User?) -> ResultMap? in value.flatMap { (value: User) -> ResultMap in value.resultMap } } }, forKey: "users")
      }
    }

    public var animals: [Animal?]? {
      get {
        return (resultMap["animals"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [Animal?] in value.map { (value: ResultMap?) -> Animal? in value.flatMap { (value: ResultMap) -> Animal in Animal(unsafeResultMap: value) } } }
      }
      set {
        resultMap.updateValue(newValue.flatMap { (value: [Animal?]) -> [ResultMap?] in value.map { (value: Animal?) -> ResultMap? in value.flatMap { (value: Animal) -> ResultMap in value.resultMap } } }, forKey: "animals")
      }
    }

    public var annonces: [Annonce?]? {
      get {
        return (resultMap["annonces"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [Annonce?] in value.map { (value: ResultMap?) -> Annonce? in value.flatMap { (value: ResultMap) -> Annonce in Annonce(unsafeResultMap: value) } } }
      }
      set {
        resultMap.updateValue(newValue.flatMap { (value: [Annonce?]) -> [ResultMap?] in value.map { (value: Annonce?) -> ResultMap? in value.flatMap { (value: Annonce) -> ResultMap in value.resultMap } } }, forKey: "annonces")
      }
    }

    public struct User: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["User"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLFragmentSpread(AllUserFields.self),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var fragments: Fragments {
        get {
          return Fragments(unsafeResultMap: resultMap)
        }
        set {
          resultMap += newValue.resultMap
        }
      }

      public struct Fragments {
        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public var allUserFields: AllUserFields {
          get {
            return AllUserFields(unsafeResultMap: resultMap)
          }
          set {
            resultMap += newValue.resultMap
          }
        }
      }
    }

    public struct Animal: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["Animals"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLFragmentSpread(AllAnimalFields.self),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(animalId: GraphQLID? = nil, ownerId: GraphQLID? = nil, name: String? = nil, specie: SpeciesEnum? = nil, gender: AnimalGender? = nil, race: RaceEnum? = nil, description: String? = nil, age: Int? = nil, furColor: FurColorEnum? = nil, isCastrated: Bool? = nil, weight: Int? = nil, size: Int? = nil, photo: String? = nil) {
        self.init(unsafeResultMap: ["__typename": "Animals", "animalID": animalId, "ownerID": ownerId, "name": name, "specie": specie, "gender": gender, "race": race, "description": description, "age": age, "furColor": furColor, "isCastrated": isCastrated, "weight": weight, "size": size, "photo": photo])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var fragments: Fragments {
        get {
          return Fragments(unsafeResultMap: resultMap)
        }
        set {
          resultMap += newValue.resultMap
        }
      }

      public struct Fragments {
        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public var allAnimalFields: AllAnimalFields {
          get {
            return AllAnimalFields(unsafeResultMap: resultMap)
          }
          set {
            resultMap += newValue.resultMap
          }
        }
      }
    }

    public struct Annonce: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["Annonce"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLFragmentSpread(AllAnnoucementFields.self),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var fragments: Fragments {
        get {
          return Fragments(unsafeResultMap: resultMap)
        }
        set {
          resultMap += newValue.resultMap
        }
      }

      public struct Fragments {
        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public var allAnnoucementFields: AllAnnoucementFields {
          get {
            return AllAnnoucementFields(unsafeResultMap: resultMap)
          }
          set {
            resultMap += newValue.resultMap
          }
        }
      }
    }
  }
}

public final class AllAnnoucementQueryQuery: GraphQLQuery {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    query allAnnoucementQuery {
      annonces {
        __typename
        ...allAnnoucementFields
      }
    }
    """

  public let operationName: String = "allAnnoucementQuery"

  public var queryDocument: String {
    var document: String = operationDefinition
    document.append("\n" + AllAnnoucementFields.fragmentDefinition)
    return document
  }

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Query"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("annonces", type: .list(.object(Annonce.selections))),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(annonces: [Annonce?]? = nil) {
      self.init(unsafeResultMap: ["__typename": "Query", "annonces": annonces.flatMap { (value: [Annonce?]) -> [ResultMap?] in value.map { (value: Annonce?) -> ResultMap? in value.flatMap { (value: Annonce) -> ResultMap in value.resultMap } } }])
    }

    public var annonces: [Annonce?]? {
      get {
        return (resultMap["annonces"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [Annonce?] in value.map { (value: ResultMap?) -> Annonce? in value.flatMap { (value: ResultMap) -> Annonce in Annonce(unsafeResultMap: value) } } }
      }
      set {
        resultMap.updateValue(newValue.flatMap { (value: [Annonce?]) -> [ResultMap?] in value.map { (value: Annonce?) -> ResultMap? in value.flatMap { (value: Annonce) -> ResultMap in value.resultMap } } }, forKey: "annonces")
      }
    }

    public struct Annonce: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["Annonce"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLFragmentSpread(AllAnnoucementFields.self),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var fragments: Fragments {
        get {
          return Fragments(unsafeResultMap: resultMap)
        }
        set {
          resultMap += newValue.resultMap
        }
      }

      public struct Fragments {
        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public var allAnnoucementFields: AllAnnoucementFields {
          get {
            return AllAnnoucementFields(unsafeResultMap: resultMap)
          }
          set {
            resultMap += newValue.resultMap
          }
        }
      }
    }
  }
}

public final class AllUserQueryQuery: GraphQLQuery {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    query allUserQuery {
      users {
        __typename
        ...allUserFields
      }
    }
    """

  public let operationName: String = "allUserQuery"

  public var queryDocument: String {
    var document: String = operationDefinition
    document.append("\n" + AllUserFields.fragmentDefinition)
    document.append("\n" + AllAnimalFields.fragmentDefinition)
    return document
  }

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Query"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("users", type: .list(.object(User.selections))),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(users: [User?]? = nil) {
      self.init(unsafeResultMap: ["__typename": "Query", "users": users.flatMap { (value: [User?]) -> [ResultMap?] in value.map { (value: User?) -> ResultMap? in value.flatMap { (value: User) -> ResultMap in value.resultMap } } }])
    }

    public var users: [User?]? {
      get {
        return (resultMap["users"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [User?] in value.map { (value: ResultMap?) -> User? in value.flatMap { (value: ResultMap) -> User in User(unsafeResultMap: value) } } }
      }
      set {
        resultMap.updateValue(newValue.flatMap { (value: [User?]) -> [ResultMap?] in value.map { (value: User?) -> ResultMap? in value.flatMap { (value: User) -> ResultMap in value.resultMap } } }, forKey: "users")
      }
    }

    public struct User: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["User"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLFragmentSpread(AllUserFields.self),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var fragments: Fragments {
        get {
          return Fragments(unsafeResultMap: resultMap)
        }
        set {
          resultMap += newValue.resultMap
        }
      }

      public struct Fragments {
        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public var allUserFields: AllUserFields {
          get {
            return AllUserFields(unsafeResultMap: resultMap)
          }
          set {
            resultMap += newValue.resultMap
          }
        }
      }
    }
  }
}

public final class AllAnimalQueryQuery: GraphQLQuery {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    query allAnimalQuery {
      animals {
        __typename
        ...allAnimalFields
      }
    }
    """

  public let operationName: String = "allAnimalQuery"

  public var queryDocument: String {
    var document: String = operationDefinition
    document.append("\n" + AllAnimalFields.fragmentDefinition)
    return document
  }

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Query"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("animals", type: .list(.object(Animal.selections))),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(animals: [Animal?]? = nil) {
      self.init(unsafeResultMap: ["__typename": "Query", "animals": animals.flatMap { (value: [Animal?]) -> [ResultMap?] in value.map { (value: Animal?) -> ResultMap? in value.flatMap { (value: Animal) -> ResultMap in value.resultMap } } }])
    }

    public var animals: [Animal?]? {
      get {
        return (resultMap["animals"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [Animal?] in value.map { (value: ResultMap?) -> Animal? in value.flatMap { (value: ResultMap) -> Animal in Animal(unsafeResultMap: value) } } }
      }
      set {
        resultMap.updateValue(newValue.flatMap { (value: [Animal?]) -> [ResultMap?] in value.map { (value: Animal?) -> ResultMap? in value.flatMap { (value: Animal) -> ResultMap in value.resultMap } } }, forKey: "animals")
      }
    }

    public struct Animal: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["Animals"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLFragmentSpread(AllAnimalFields.self),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(animalId: GraphQLID? = nil, ownerId: GraphQLID? = nil, name: String? = nil, specie: SpeciesEnum? = nil, gender: AnimalGender? = nil, race: RaceEnum? = nil, description: String? = nil, age: Int? = nil, furColor: FurColorEnum? = nil, isCastrated: Bool? = nil, weight: Int? = nil, size: Int? = nil, photo: String? = nil) {
        self.init(unsafeResultMap: ["__typename": "Animals", "animalID": animalId, "ownerID": ownerId, "name": name, "specie": specie, "gender": gender, "race": race, "description": description, "age": age, "furColor": furColor, "isCastrated": isCastrated, "weight": weight, "size": size, "photo": photo])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var fragments: Fragments {
        get {
          return Fragments(unsafeResultMap: resultMap)
        }
        set {
          resultMap += newValue.resultMap
        }
      }

      public struct Fragments {
        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public var allAnimalFields: AllAnimalFields {
          get {
            return AllAnimalFields(unsafeResultMap: resultMap)
          }
          set {
            resultMap += newValue.resultMap
          }
        }
      }
    }
  }
}

public final class AnnonceLoaderQuery: GraphQLQuery {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    query annonceLoader($pagination: PaginationInput!) {
      annoncesLoader(pagination: $pagination) {
        __typename
        ...allAnnoucementFields
      }
    }
    """

  public let operationName: String = "annonceLoader"

  public var queryDocument: String {
    var document: String = operationDefinition
    document.append("\n" + AllAnnoucementFields.fragmentDefinition)
    return document
  }

  public var pagination: PaginationInput

  public init(pagination: PaginationInput) {
    self.pagination = pagination
  }

  public var variables: GraphQLMap? {
    return ["pagination": pagination]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Query"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("annoncesLoader", arguments: ["pagination": GraphQLVariable("pagination")], type: .list(.object(AnnoncesLoader.selections))),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(annoncesLoader: [AnnoncesLoader?]? = nil) {
      self.init(unsafeResultMap: ["__typename": "Query", "annoncesLoader": annoncesLoader.flatMap { (value: [AnnoncesLoader?]) -> [ResultMap?] in value.map { (value: AnnoncesLoader?) -> ResultMap? in value.flatMap { (value: AnnoncesLoader) -> ResultMap in value.resultMap } } }])
    }

    public var annoncesLoader: [AnnoncesLoader?]? {
      get {
        return (resultMap["annoncesLoader"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [AnnoncesLoader?] in value.map { (value: ResultMap?) -> AnnoncesLoader? in value.flatMap { (value: ResultMap) -> AnnoncesLoader in AnnoncesLoader(unsafeResultMap: value) } } }
      }
      set {
        resultMap.updateValue(newValue.flatMap { (value: [AnnoncesLoader?]) -> [ResultMap?] in value.map { (value: AnnoncesLoader?) -> ResultMap? in value.flatMap { (value: AnnoncesLoader) -> ResultMap in value.resultMap } } }, forKey: "annoncesLoader")
      }
    }

    public struct AnnoncesLoader: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["Annonce"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLFragmentSpread(AllAnnoucementFields.self),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var fragments: Fragments {
        get {
          return Fragments(unsafeResultMap: resultMap)
        }
        set {
          resultMap += newValue.resultMap
        }
      }

      public struct Fragments {
        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public var allAnnoucementFields: AllAnnoucementFields {
          get {
            return AllAnnoucementFields(unsafeResultMap: resultMap)
          }
          set {
            resultMap += newValue.resultMap
          }
        }
      }
    }
  }
}

public final class TestOrderByQuery: GraphQLQuery {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    query testOrderBy {
      annonces(orderBy: {field: CREATIONDATE, direction: ASC}) {
        __typename
        creationDate
        author
        title
      }
    }
    """

  public let operationName: String = "testOrderBy"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Query"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("annonces", arguments: ["orderBy": ["field": "CREATIONDATE", "direction": "ASC"]], type: .list(.object(Annonce.selections))),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(annonces: [Annonce?]? = nil) {
      self.init(unsafeResultMap: ["__typename": "Query", "annonces": annonces.flatMap { (value: [Annonce?]) -> [ResultMap?] in value.map { (value: Annonce?) -> ResultMap? in value.flatMap { (value: Annonce) -> ResultMap in value.resultMap } } }])
    }

    public var annonces: [Annonce?]? {
      get {
        return (resultMap["annonces"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [Annonce?] in value.map { (value: ResultMap?) -> Annonce? in value.flatMap { (value: ResultMap) -> Annonce in Annonce(unsafeResultMap: value) } } }
      }
      set {
        resultMap.updateValue(newValue.flatMap { (value: [Annonce?]) -> [ResultMap?] in value.map { (value: Annonce?) -> ResultMap? in value.flatMap { (value: Annonce) -> ResultMap in value.resultMap } } }, forKey: "annonces")
      }
    }

    public struct Annonce: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["Annonce"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("creationDate", type: .scalar(String.self)),
          GraphQLField("author", type: .scalar(GraphQLID.self)),
          GraphQLField("title", type: .scalar(String.self)),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(creationDate: String? = nil, author: GraphQLID? = nil, title: String? = nil) {
        self.init(unsafeResultMap: ["__typename": "Annonce", "creationDate": creationDate, "author": author, "title": title])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var creationDate: String? {
        get {
          return resultMap["creationDate"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "creationDate")
        }
      }

      public var author: GraphQLID? {
        get {
          return resultMap["author"] as? GraphQLID
        }
        set {
          resultMap.updateValue(newValue, forKey: "author")
        }
      }

      public var title: String? {
        get {
          return resultMap["title"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "title")
        }
      }
    }
  }
}

public final class LoginMutation: GraphQLMutation {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    mutation login($login: newLoginInput!) {
      newLogin(input: $login) {
        __typename
        result
        user {
          __typename
          ...allUserFields
        }
      }
    }
    """

  public let operationName: String = "login"

  public var queryDocument: String {
    var document: String = operationDefinition
    document.append("\n" + AllUserFields.fragmentDefinition)
    document.append("\n" + AllAnimalFields.fragmentDefinition)
    return document
  }

  public var login: newLoginInput

  public init(login: newLoginInput) {
    self.login = login
  }

  public var variables: GraphQLMap? {
    return ["login": login]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Mutation"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("newLogin", arguments: ["input": GraphQLVariable("login")], type: .object(NewLogin.selections)),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(newLogin: NewLogin? = nil) {
      self.init(unsafeResultMap: ["__typename": "Mutation", "newLogin": newLogin.flatMap { (value: NewLogin) -> ResultMap in value.resultMap }])
    }

    /// login User
    public var newLogin: NewLogin? {
      get {
        return (resultMap["newLogin"] as? ResultMap).flatMap { NewLogin(unsafeResultMap: $0) }
      }
      set {
        resultMap.updateValue(newValue?.resultMap, forKey: "newLogin")
      }
    }

    public struct NewLogin: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["newLoginPayload"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("result", type: .scalar(Bool.self)),
          GraphQLField("user", type: .object(User.selections)),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(result: Bool? = nil, user: User? = nil) {
        self.init(unsafeResultMap: ["__typename": "newLoginPayload", "result": result, "user": user.flatMap { (value: User) -> ResultMap in value.resultMap }])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var result: Bool? {
        get {
          return resultMap["result"] as? Bool
        }
        set {
          resultMap.updateValue(newValue, forKey: "result")
        }
      }

      public var user: User? {
        get {
          return (resultMap["user"] as? ResultMap).flatMap { User(unsafeResultMap: $0) }
        }
        set {
          resultMap.updateValue(newValue?.resultMap, forKey: "user")
        }
      }

      public struct User: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["User"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLFragmentSpread(AllUserFields.self),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var fragments: Fragments {
          get {
            return Fragments(unsafeResultMap: resultMap)
          }
          set {
            resultMap += newValue.resultMap
          }
        }

        public struct Fragments {
          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public var allUserFields: AllUserFields {
            get {
              return AllUserFields(unsafeResultMap: resultMap)
            }
            set {
              resultMap += newValue.resultMap
            }
          }
        }
      }
    }
  }
}

public final class LoginTestMutation: GraphQLMutation {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    mutation loginTest {
      newLogin(input: {email: "toto@gmail.fr", password: "123456789"}) {
        __typename
        result
        user {
          __typename
          ...allUserFields
        }
      }
    }
    """

  public let operationName: String = "loginTest"

  public var queryDocument: String {
    var document: String = operationDefinition
    document.append("\n" + AllUserFields.fragmentDefinition)
    document.append("\n" + AllAnimalFields.fragmentDefinition)
    return document
  }

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Mutation"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("newLogin", arguments: ["input": ["email": "toto@gmail.fr", "password": "123456789"]], type: .object(NewLogin.selections)),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(newLogin: NewLogin? = nil) {
      self.init(unsafeResultMap: ["__typename": "Mutation", "newLogin": newLogin.flatMap { (value: NewLogin) -> ResultMap in value.resultMap }])
    }

    /// login User
    public var newLogin: NewLogin? {
      get {
        return (resultMap["newLogin"] as? ResultMap).flatMap { NewLogin(unsafeResultMap: $0) }
      }
      set {
        resultMap.updateValue(newValue?.resultMap, forKey: "newLogin")
      }
    }

    public struct NewLogin: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["newLoginPayload"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("result", type: .scalar(Bool.self)),
          GraphQLField("user", type: .object(User.selections)),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(result: Bool? = nil, user: User? = nil) {
        self.init(unsafeResultMap: ["__typename": "newLoginPayload", "result": result, "user": user.flatMap { (value: User) -> ResultMap in value.resultMap }])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var result: Bool? {
        get {
          return resultMap["result"] as? Bool
        }
        set {
          resultMap.updateValue(newValue, forKey: "result")
        }
      }

      public var user: User? {
        get {
          return (resultMap["user"] as? ResultMap).flatMap { User(unsafeResultMap: $0) }
        }
        set {
          resultMap.updateValue(newValue?.resultMap, forKey: "user")
        }
      }

      public struct User: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["User"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLFragmentSpread(AllUserFields.self),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var fragments: Fragments {
          get {
            return Fragments(unsafeResultMap: resultMap)
          }
          set {
            resultMap += newValue.resultMap
          }
        }

        public struct Fragments {
          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public var allUserFields: AllUserFields {
            get {
              return AllUserFields(unsafeResultMap: resultMap)
            }
            set {
              resultMap += newValue.resultMap
            }
          }
        }
      }
    }
  }
}

public final class NewUserMutationWithVariablesMutation: GraphQLMutation {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    mutation newUserMutationWithVariables($user: newUserInput!) {
      newUser(input: $user) {
        __typename
        user {
          __typename
          ...allUserFields
        }
      }
    }
    """

  public let operationName: String = "newUserMutationWithVariables"

  public var queryDocument: String {
    var document: String = operationDefinition
    document.append("\n" + AllUserFields.fragmentDefinition)
    document.append("\n" + AllAnimalFields.fragmentDefinition)
    return document
  }

  public var user: newUserInput

  public init(user: newUserInput) {
    self.user = user
  }

  public var variables: GraphQLMap? {
    return ["user": user]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Mutation"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("newUser", arguments: ["input": GraphQLVariable("user")], type: .object(NewUser.selections)),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(newUser: NewUser? = nil) {
      self.init(unsafeResultMap: ["__typename": "Mutation", "newUser": newUser.flatMap { (value: NewUser) -> ResultMap in value.resultMap }])
    }

    /// create new User.
    public var newUser: NewUser? {
      get {
        return (resultMap["newUser"] as? ResultMap).flatMap { NewUser(unsafeResultMap: $0) }
      }
      set {
        resultMap.updateValue(newValue?.resultMap, forKey: "newUser")
      }
    }

    public struct NewUser: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["newUserPayload"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("user", type: .object(User.selections)),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(user: User? = nil) {
        self.init(unsafeResultMap: ["__typename": "newUserPayload", "user": user.flatMap { (value: User) -> ResultMap in value.resultMap }])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var user: User? {
        get {
          return (resultMap["user"] as? ResultMap).flatMap { User(unsafeResultMap: $0) }
        }
        set {
          resultMap.updateValue(newValue?.resultMap, forKey: "user")
        }
      }

      public struct User: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["User"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLFragmentSpread(AllUserFields.self),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var fragments: Fragments {
          get {
            return Fragments(unsafeResultMap: resultMap)
          }
          set {
            resultMap += newValue.resultMap
          }
        }

        public struct Fragments {
          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public var allUserFields: AllUserFields {
            get {
              return AllUserFields(unsafeResultMap: resultMap)
            }
            set {
              resultMap += newValue.resultMap
            }
          }
        }
      }
    }
  }
}

public final class NewAnimalMutationWithVariablesMutation: GraphQLMutation {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    mutation newAnimalMutationWithVariables($animal: newAnimalInput!) {
      newAnimal(input: $animal) {
        __typename
        animal {
          __typename
          ...allAnimalFields
        }
      }
    }
    """

  public let operationName: String = "newAnimalMutationWithVariables"

  public var queryDocument: String {
    var document: String = operationDefinition
    document.append("\n" + AllAnimalFields.fragmentDefinition)
    return document
  }

  public var animal: newAnimalInput

  public init(animal: newAnimalInput) {
    self.animal = animal
  }

  public var variables: GraphQLMap? {
    return ["animal": animal]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Mutation"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("newAnimal", arguments: ["input": GraphQLVariable("animal")], type: .object(NewAnimal.selections)),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(newAnimal: NewAnimal? = nil) {
      self.init(unsafeResultMap: ["__typename": "Mutation", "newAnimal": newAnimal.flatMap { (value: NewAnimal) -> ResultMap in value.resultMap }])
    }

    /// create new Animal.
    public var newAnimal: NewAnimal? {
      get {
        return (resultMap["newAnimal"] as? ResultMap).flatMap { NewAnimal(unsafeResultMap: $0) }
      }
      set {
        resultMap.updateValue(newValue?.resultMap, forKey: "newAnimal")
      }
    }

    public struct NewAnimal: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["newAnimalPayload"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("animal", type: .object(Animal.selections)),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(animal: Animal? = nil) {
        self.init(unsafeResultMap: ["__typename": "newAnimalPayload", "animal": animal.flatMap { (value: Animal) -> ResultMap in value.resultMap }])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var animal: Animal? {
        get {
          return (resultMap["animal"] as? ResultMap).flatMap { Animal(unsafeResultMap: $0) }
        }
        set {
          resultMap.updateValue(newValue?.resultMap, forKey: "animal")
        }
      }

      public struct Animal: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["Animals"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLFragmentSpread(AllAnimalFields.self),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(animalId: GraphQLID? = nil, ownerId: GraphQLID? = nil, name: String? = nil, specie: SpeciesEnum? = nil, gender: AnimalGender? = nil, race: RaceEnum? = nil, description: String? = nil, age: Int? = nil, furColor: FurColorEnum? = nil, isCastrated: Bool? = nil, weight: Int? = nil, size: Int? = nil, photo: String? = nil) {
          self.init(unsafeResultMap: ["__typename": "Animals", "animalID": animalId, "ownerID": ownerId, "name": name, "specie": specie, "gender": gender, "race": race, "description": description, "age": age, "furColor": furColor, "isCastrated": isCastrated, "weight": weight, "size": size, "photo": photo])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var fragments: Fragments {
          get {
            return Fragments(unsafeResultMap: resultMap)
          }
          set {
            resultMap += newValue.resultMap
          }
        }

        public struct Fragments {
          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public var allAnimalFields: AllAnimalFields {
            get {
              return AllAnimalFields(unsafeResultMap: resultMap)
            }
            set {
              resultMap += newValue.resultMap
            }
          }
        }
      }
    }
  }
}

public final class NewAnnoucementMutationWithVariablesMutation: GraphQLMutation {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    mutation newAnnoucementMutationWithVariables($annoucement: newAnnoucementInput!) {
      newAnnoucement(input: $annoucement) {
        __typename
        annonce {
          __typename
          ...allAnnoucementFields
        }
      }
    }
    """

  public let operationName: String = "newAnnoucementMutationWithVariables"

  public var queryDocument: String {
    var document: String = operationDefinition
    document.append("\n" + AllAnnoucementFields.fragmentDefinition)
    return document
  }

  public var annoucement: newAnnoucementInput

  public init(annoucement: newAnnoucementInput) {
    self.annoucement = annoucement
  }

  public var variables: GraphQLMap? {
    return ["annoucement": annoucement]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Mutation"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("newAnnoucement", arguments: ["input": GraphQLVariable("annoucement")], type: .object(NewAnnoucement.selections)),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(newAnnoucement: NewAnnoucement? = nil) {
      self.init(unsafeResultMap: ["__typename": "Mutation", "newAnnoucement": newAnnoucement.flatMap { (value: NewAnnoucement) -> ResultMap in value.resultMap }])
    }

    /// create new Annoucement.
    public var newAnnoucement: NewAnnoucement? {
      get {
        return (resultMap["newAnnoucement"] as? ResultMap).flatMap { NewAnnoucement(unsafeResultMap: $0) }
      }
      set {
        resultMap.updateValue(newValue?.resultMap, forKey: "newAnnoucement")
      }
    }

    public struct NewAnnoucement: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["newAnnoucementPayload"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("annonce", type: .object(Annonce.selections)),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(annonce: Annonce? = nil) {
        self.init(unsafeResultMap: ["__typename": "newAnnoucementPayload", "annonce": annonce.flatMap { (value: Annonce) -> ResultMap in value.resultMap }])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var annonce: Annonce? {
        get {
          return (resultMap["annonce"] as? ResultMap).flatMap { Annonce(unsafeResultMap: $0) }
        }
        set {
          resultMap.updateValue(newValue?.resultMap, forKey: "annonce")
        }
      }

      public struct Annonce: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["Annonce"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLFragmentSpread(AllAnnoucementFields.self),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var fragments: Fragments {
          get {
            return Fragments(unsafeResultMap: resultMap)
          }
          set {
            resultMap += newValue.resultMap
          }
        }

        public struct Fragments {
          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public var allAnnoucementFields: AllAnnoucementFields {
            get {
              return AllAnnoucementFields(unsafeResultMap: resultMap)
            }
            set {
              resultMap += newValue.resultMap
            }
          }
        }
      }
    }
  }
}

public struct AllAnimalFields: GraphQLFragment {
  /// The raw GraphQL definition of this fragment.
  public static let fragmentDefinition: String =
    """
    fragment allAnimalFields on Animals {
      __typename
      animalID
      ownerID
      name
      specie
      gender
      race
      description
      age
      furColor
      isCastrated
      weight
      size
      photo
    }
    """

  public static let possibleTypes: [String] = ["Animals"]

  public static var selections: [GraphQLSelection] {
    return [
      GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
      GraphQLField("animalID", type: .scalar(GraphQLID.self)),
      GraphQLField("ownerID", type: .scalar(GraphQLID.self)),
      GraphQLField("name", type: .scalar(String.self)),
      GraphQLField("specie", type: .scalar(SpeciesEnum.self)),
      GraphQLField("gender", type: .scalar(AnimalGender.self)),
      GraphQLField("race", type: .scalar(RaceEnum.self)),
      GraphQLField("description", type: .scalar(String.self)),
      GraphQLField("age", type: .scalar(Int.self)),
      GraphQLField("furColor", type: .scalar(FurColorEnum.self)),
      GraphQLField("isCastrated", type: .scalar(Bool.self)),
      GraphQLField("weight", type: .scalar(Int.self)),
      GraphQLField("size", type: .scalar(Int.self)),
      GraphQLField("photo", type: .scalar(String.self)),
    ]
  }

  public private(set) var resultMap: ResultMap

  public init(unsafeResultMap: ResultMap) {
    self.resultMap = unsafeResultMap
  }

  public init(animalId: GraphQLID? = nil, ownerId: GraphQLID? = nil, name: String? = nil, specie: SpeciesEnum? = nil, gender: AnimalGender? = nil, race: RaceEnum? = nil, description: String? = nil, age: Int? = nil, furColor: FurColorEnum? = nil, isCastrated: Bool? = nil, weight: Int? = nil, size: Int? = nil, photo: String? = nil) {
    self.init(unsafeResultMap: ["__typename": "Animals", "animalID": animalId, "ownerID": ownerId, "name": name, "specie": specie, "gender": gender, "race": race, "description": description, "age": age, "furColor": furColor, "isCastrated": isCastrated, "weight": weight, "size": size, "photo": photo])
  }

  public var __typename: String {
    get {
      return resultMap["__typename"]! as! String
    }
    set {
      resultMap.updateValue(newValue, forKey: "__typename")
    }
  }

  public var animalId: GraphQLID? {
    get {
      return resultMap["animalID"] as? GraphQLID
    }
    set {
      resultMap.updateValue(newValue, forKey: "animalID")
    }
  }

  public var ownerId: GraphQLID? {
    get {
      return resultMap["ownerID"] as? GraphQLID
    }
    set {
      resultMap.updateValue(newValue, forKey: "ownerID")
    }
  }

  public var name: String? {
    get {
      return resultMap["name"] as? String
    }
    set {
      resultMap.updateValue(newValue, forKey: "name")
    }
  }

  public var specie: SpeciesEnum? {
    get {
      return resultMap["specie"] as? SpeciesEnum
    }
    set {
      resultMap.updateValue(newValue, forKey: "specie")
    }
  }

  public var gender: AnimalGender? {
    get {
      return resultMap["gender"] as? AnimalGender
    }
    set {
      resultMap.updateValue(newValue, forKey: "gender")
    }
  }

  public var race: RaceEnum? {
    get {
      return resultMap["race"] as? RaceEnum
    }
    set {
      resultMap.updateValue(newValue, forKey: "race")
    }
  }

  public var description: String? {
    get {
      return resultMap["description"] as? String
    }
    set {
      resultMap.updateValue(newValue, forKey: "description")
    }
  }

  public var age: Int? {
    get {
      return resultMap["age"] as? Int
    }
    set {
      resultMap.updateValue(newValue, forKey: "age")
    }
  }

  public var furColor: FurColorEnum? {
    get {
      return resultMap["furColor"] as? FurColorEnum
    }
    set {
      resultMap.updateValue(newValue, forKey: "furColor")
    }
  }

  public var isCastrated: Bool? {
    get {
      return resultMap["isCastrated"] as? Bool
    }
    set {
      resultMap.updateValue(newValue, forKey: "isCastrated")
    }
  }

  public var weight: Int? {
    get {
      return resultMap["weight"] as? Int
    }
    set {
      resultMap.updateValue(newValue, forKey: "weight")
    }
  }

  public var size: Int? {
    get {
      return resultMap["size"] as? Int
    }
    set {
      resultMap.updateValue(newValue, forKey: "size")
    }
  }

  public var photo: String? {
    get {
      return resultMap["photo"] as? String
    }
    set {
      resultMap.updateValue(newValue, forKey: "photo")
    }
  }
}

public struct AllAnnoucementFields: GraphQLFragment {
  /// The raw GraphQL definition of this fragment.
  public static let fragmentDefinition: String =
    """
    fragment allAnnoucementFields on Annonce {
      __typename
      annonceID
      animalID
      creationDate
      title
      description
      announcementType
      commentaires {
        __typename
        annonceID
        commentaire
      }
    }
    """

  public static let possibleTypes: [String] = ["Annonce"]

  public static var selections: [GraphQLSelection] {
    return [
      GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
      GraphQLField("annonceID", type: .scalar(GraphQLID.self)),
      GraphQLField("animalID", type: .scalar(GraphQLID.self)),
      GraphQLField("creationDate", type: .scalar(String.self)),
      GraphQLField("title", type: .scalar(String.self)),
      GraphQLField("description", type: .scalar(String.self)),
      GraphQLField("announcementType", type: .scalar(AnnoucementType.self)),
      GraphQLField("commentaires", type: .list(.object(Commentaire.selections))),
    ]
  }

  public private(set) var resultMap: ResultMap

  public init(unsafeResultMap: ResultMap) {
    self.resultMap = unsafeResultMap
  }

  public init(annonceId: GraphQLID? = nil, animalId: GraphQLID? = nil, creationDate: String? = nil, title: String? = nil, description: String? = nil, announcementType: AnnoucementType? = nil, commentaires: [Commentaire?]? = nil) {
    self.init(unsafeResultMap: ["__typename": "Annonce", "annonceID": annonceId, "animalID": animalId, "creationDate": creationDate, "title": title, "description": description, "announcementType": announcementType, "commentaires": commentaires.flatMap { (value: [Commentaire?]) -> [ResultMap?] in value.map { (value: Commentaire?) -> ResultMap? in value.flatMap { (value: Commentaire) -> ResultMap in value.resultMap } } }])
  }

  public var __typename: String {
    get {
      return resultMap["__typename"]! as! String
    }
    set {
      resultMap.updateValue(newValue, forKey: "__typename")
    }
  }

  public var annonceId: GraphQLID? {
    get {
      return resultMap["annonceID"] as? GraphQLID
    }
    set {
      resultMap.updateValue(newValue, forKey: "annonceID")
    }
  }

  public var animalId: GraphQLID? {
    get {
      return resultMap["animalID"] as? GraphQLID
    }
    set {
      resultMap.updateValue(newValue, forKey: "animalID")
    }
  }

  public var creationDate: String? {
    get {
      return resultMap["creationDate"] as? String
    }
    set {
      resultMap.updateValue(newValue, forKey: "creationDate")
    }
  }

  public var title: String? {
    get {
      return resultMap["title"] as? String
    }
    set {
      resultMap.updateValue(newValue, forKey: "title")
    }
  }

  public var description: String? {
    get {
      return resultMap["description"] as? String
    }
    set {
      resultMap.updateValue(newValue, forKey: "description")
    }
  }

  public var announcementType: AnnoucementType? {
    get {
      return resultMap["announcementType"] as? AnnoucementType
    }
    set {
      resultMap.updateValue(newValue, forKey: "announcementType")
    }
  }

  public var commentaires: [Commentaire?]? {
    get {
      return (resultMap["commentaires"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [Commentaire?] in value.map { (value: ResultMap?) -> Commentaire? in value.flatMap { (value: ResultMap) -> Commentaire in Commentaire(unsafeResultMap: value) } } }
    }
    set {
      resultMap.updateValue(newValue.flatMap { (value: [Commentaire?]) -> [ResultMap?] in value.map { (value: Commentaire?) -> ResultMap? in value.flatMap { (value: Commentaire) -> ResultMap in value.resultMap } } }, forKey: "commentaires")
    }
  }

  public struct Commentaire: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Commentaires"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("annonceID", type: .scalar(GraphQLID.self)),
        GraphQLField("commentaire", type: .scalar(String.self)),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(annonceId: GraphQLID? = nil, commentaire: String? = nil) {
      self.init(unsafeResultMap: ["__typename": "Commentaires", "annonceID": annonceId, "commentaire": commentaire])
    }

    public var __typename: String {
      get {
        return resultMap["__typename"]! as! String
      }
      set {
        resultMap.updateValue(newValue, forKey: "__typename")
      }
    }

    public var annonceId: GraphQLID? {
      get {
        return resultMap["annonceID"] as? GraphQLID
      }
      set {
        resultMap.updateValue(newValue, forKey: "annonceID")
      }
    }

    public var commentaire: String? {
      get {
        return resultMap["commentaire"] as? String
      }
      set {
        resultMap.updateValue(newValue, forKey: "commentaire")
      }
    }
  }
}

public struct AllUserFields: GraphQLFragment {
  /// The raw GraphQL definition of this fragment.
  public static let fragmentDefinition: String =
    """
    fragment allUserFields on User {
      __typename
      userID
      lastName
      firstName
      city
      phoneNumber
      email
      password
      gender
      animalList {
        __typename
        ...allAnimalFields
      }
    }
    """

  public static let possibleTypes: [String] = ["User"]

  public static var selections: [GraphQLSelection] {
    return [
      GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
      GraphQLField("userID", type: .nonNull(.scalar(GraphQLID.self))),
      GraphQLField("lastName", type: .scalar(String.self)),
      GraphQLField("firstName", type: .scalar(String.self)),
      GraphQLField("city", type: .scalar(String.self)),
      GraphQLField("phoneNumber", type: .scalar(String.self)),
      GraphQLField("email", type: .scalar(String.self)),
      GraphQLField("password", type: .scalar(String.self)),
      GraphQLField("gender", type: .scalar(HumanGender.self)),
      GraphQLField("animalList", type: .list(.object(AnimalList.selections))),
    ]
  }

  public private(set) var resultMap: ResultMap

  public init(unsafeResultMap: ResultMap) {
    self.resultMap = unsafeResultMap
  }

  public init(userId: GraphQLID, lastName: String? = nil, firstName: String? = nil, city: String? = nil, phoneNumber: String? = nil, email: String? = nil, password: String? = nil, gender: HumanGender? = nil, animalList: [AnimalList?]? = nil) {
    self.init(unsafeResultMap: ["__typename": "User", "userID": userId, "lastName": lastName, "firstName": firstName, "city": city, "phoneNumber": phoneNumber, "email": email, "password": password, "gender": gender, "animalList": animalList.flatMap { (value: [AnimalList?]) -> [ResultMap?] in value.map { (value: AnimalList?) -> ResultMap? in value.flatMap { (value: AnimalList) -> ResultMap in value.resultMap } } }])
  }

  public var __typename: String {
    get {
      return resultMap["__typename"]! as! String
    }
    set {
      resultMap.updateValue(newValue, forKey: "__typename")
    }
  }

  public var userId: GraphQLID {
    get {
      return resultMap["userID"]! as! GraphQLID
    }
    set {
      resultMap.updateValue(newValue, forKey: "userID")
    }
  }

  public var lastName: String? {
    get {
      return resultMap["lastName"] as? String
    }
    set {
      resultMap.updateValue(newValue, forKey: "lastName")
    }
  }

  public var firstName: String? {
    get {
      return resultMap["firstName"] as? String
    }
    set {
      resultMap.updateValue(newValue, forKey: "firstName")
    }
  }

  public var city: String? {
    get {
      return resultMap["city"] as? String
    }
    set {
      resultMap.updateValue(newValue, forKey: "city")
    }
  }

  public var phoneNumber: String? {
    get {
      return resultMap["phoneNumber"] as? String
    }
    set {
      resultMap.updateValue(newValue, forKey: "phoneNumber")
    }
  }

  public var email: String? {
    get {
      return resultMap["email"] as? String
    }
    set {
      resultMap.updateValue(newValue, forKey: "email")
    }
  }

  public var password: String? {
    get {
      return resultMap["password"] as? String
    }
    set {
      resultMap.updateValue(newValue, forKey: "password")
    }
  }

  public var gender: HumanGender? {
    get {
      return resultMap["gender"] as? HumanGender
    }
    set {
      resultMap.updateValue(newValue, forKey: "gender")
    }
  }

  public var animalList: [AnimalList?]? {
    get {
      return (resultMap["animalList"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [AnimalList?] in value.map { (value: ResultMap?) -> AnimalList? in value.flatMap { (value: ResultMap) -> AnimalList in AnimalList(unsafeResultMap: value) } } }
    }
    set {
      resultMap.updateValue(newValue.flatMap { (value: [AnimalList?]) -> [ResultMap?] in value.map { (value: AnimalList?) -> ResultMap? in value.flatMap { (value: AnimalList) -> ResultMap in value.resultMap } } }, forKey: "animalList")
    }
  }

  public struct AnimalList: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Animals"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLFragmentSpread(AllAnimalFields.self),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(animalId: GraphQLID? = nil, ownerId: GraphQLID? = nil, name: String? = nil, specie: SpeciesEnum? = nil, gender: AnimalGender? = nil, race: RaceEnum? = nil, description: String? = nil, age: Int? = nil, furColor: FurColorEnum? = nil, isCastrated: Bool? = nil, weight: Int? = nil, size: Int? = nil, photo: String? = nil) {
      self.init(unsafeResultMap: ["__typename": "Animals", "animalID": animalId, "ownerID": ownerId, "name": name, "specie": specie, "gender": gender, "race": race, "description": description, "age": age, "furColor": furColor, "isCastrated": isCastrated, "weight": weight, "size": size, "photo": photo])
    }

    public var __typename: String {
      get {
        return resultMap["__typename"]! as! String
      }
      set {
        resultMap.updateValue(newValue, forKey: "__typename")
      }
    }

    public var fragments: Fragments {
      get {
        return Fragments(unsafeResultMap: resultMap)
      }
      set {
        resultMap += newValue.resultMap
      }
    }

    public struct Fragments {
      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public var allAnimalFields: AllAnimalFields {
        get {
          return AllAnimalFields(unsafeResultMap: resultMap)
        }
        set {
          resultMap += newValue.resultMap
        }
      }
    }
  }
}
