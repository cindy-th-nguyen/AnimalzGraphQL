// @generated
//  This file was automatically generated and should not be edited.

import Apollo
import Foundation

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

public struct newUserInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  /// - Parameters:
  ///   - lastName
  ///   - firstName
  ///   - city
  ///   - phoneNumber
  ///   - email
  ///   - gender
  ///   - clientMutationId
  public init(lastName: Swift.Optional<String?> = nil, firstName: Swift.Optional<String?> = nil, city: Swift.Optional<String?> = nil, phoneNumber: Swift.Optional<String?> = nil, email: Swift.Optional<String?> = nil, gender: Swift.Optional<HumanGender?> = nil, clientMutationId: Swift.Optional<String?> = nil) {
    graphQLMap = ["lastName": lastName, "firstName": firstName, "city": city, "phoneNumber": phoneNumber, "email": email, "gender": gender, "clientMutationId": clientMutationId]
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
        userID
        firstName
        phoneNumber
        gender
        animalList {
          __typename
          animalID
          name
          race
          gender
        }
      }
      animals {
        __typename
        name
        animalID
        ownerID
      }
      annonces {
        __typename
        annonceID
        animalID
        title
        description
        creationDate
        commentaires {
          __typename
          commentaire
        }
      }
    }
    """

  public let operationName: String = "specificQuery"

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
          GraphQLField("userID", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("firstName", type: .scalar(String.self)),
          GraphQLField("phoneNumber", type: .scalar(String.self)),
          GraphQLField("gender", type: .scalar(HumanGender.self)),
          GraphQLField("animalList", type: .list(.object(AnimalList.selections))),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(userId: GraphQLID, firstName: String? = nil, phoneNumber: String? = nil, gender: HumanGender? = nil, animalList: [AnimalList?]? = nil) {
        self.init(unsafeResultMap: ["__typename": "User", "userID": userId, "firstName": firstName, "phoneNumber": phoneNumber, "gender": gender, "animalList": animalList.flatMap { (value: [AnimalList?]) -> [ResultMap?] in value.map { (value: AnimalList?) -> ResultMap? in value.flatMap { (value: AnimalList) -> ResultMap in value.resultMap } } }])
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

      public var firstName: String? {
        get {
          return resultMap["firstName"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "firstName")
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
            GraphQLField("animalID", type: .scalar(GraphQLID.self)),
            GraphQLField("name", type: .scalar(String.self)),
            GraphQLField("race", type: .scalar(RaceEnum.self)),
            GraphQLField("gender", type: .scalar(AnimalGender.self)),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(animalId: GraphQLID? = nil, name: String? = nil, race: RaceEnum? = nil, gender: AnimalGender? = nil) {
          self.init(unsafeResultMap: ["__typename": "Animals", "animalID": animalId, "name": name, "race": race, "gender": gender])
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

        public var name: String? {
          get {
            return resultMap["name"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "name")
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

        public var gender: AnimalGender? {
          get {
            return resultMap["gender"] as? AnimalGender
          }
          set {
            resultMap.updateValue(newValue, forKey: "gender")
          }
        }
      }
    }

    public struct Animal: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["Animals"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("name", type: .scalar(String.self)),
          GraphQLField("animalID", type: .scalar(GraphQLID.self)),
          GraphQLField("ownerID", type: .scalar(GraphQLID.self)),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(name: String? = nil, animalId: GraphQLID? = nil, ownerId: GraphQLID? = nil) {
        self.init(unsafeResultMap: ["__typename": "Animals", "name": name, "animalID": animalId, "ownerID": ownerId])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
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
    }

    public struct Annonce: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["Annonce"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("annonceID", type: .scalar(GraphQLID.self)),
          GraphQLField("animalID", type: .scalar(GraphQLID.self)),
          GraphQLField("title", type: .scalar(String.self)),
          GraphQLField("description", type: .scalar(String.self)),
          GraphQLField("creationDate", type: .scalar(String.self)),
          GraphQLField("commentaires", type: .list(.object(Commentaire.selections))),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(annonceId: GraphQLID? = nil, animalId: GraphQLID? = nil, title: String? = nil, description: String? = nil, creationDate: String? = nil, commentaires: [Commentaire?]? = nil) {
        self.init(unsafeResultMap: ["__typename": "Annonce", "annonceID": annonceId, "animalID": animalId, "title": title, "description": description, "creationDate": creationDate, "commentaires": commentaires.flatMap { (value: [Commentaire?]) -> [ResultMap?] in value.map { (value: Commentaire?) -> ResultMap? in value.flatMap { (value: Commentaire) -> ResultMap in value.resultMap } } }])
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

      public var creationDate: String? {
        get {
          return resultMap["creationDate"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "creationDate")
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
            GraphQLField("commentaire", type: .scalar(String.self)),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(commentaire: String? = nil) {
          self.init(unsafeResultMap: ["__typename": "Commentaires", "commentaire": commentaire])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
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
  }
}

public final class NewUserMutationMutation: GraphQLMutation {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    mutation newUserMutation {
      newUser(
        input: {lastName: "testMutationLastName", firstName: "testMutationFirstName", city: "testMutationCity", email: "testMutationMail", phoneNumber: "testMutationPhoneNumber", gender: MALE}
      ) {
        __typename
        user {
          __typename
          lastName
        }
      }
    }
    """

  public let operationName: String = "newUserMutation"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Mutation"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("newUser", arguments: ["input": ["lastName": "testMutationLastName", "firstName": "testMutationFirstName", "city": "testMutationCity", "email": "testMutationMail", "phoneNumber": "testMutationPhoneNumber", "gender": "MALE"]], type: .object(NewUser.selections)),
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
            GraphQLField("lastName", type: .scalar(String.self)),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(lastName: String? = nil) {
          self.init(unsafeResultMap: ["__typename": "User", "lastName": lastName])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
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
      }
    }
  }
}

public final class NewAnimalMutationMutation: GraphQLMutation {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    mutation newAnimalMutation {
      newAnimal(
        input: {ownerID: "b8bf0a98-dcea-46f4-8cf8-155e4e1a53cb", name: "testMutationAnimalName", specie: DOG, gender: MALE, race: SHIBA, description: "testMutationAnimalDescription", age: 10, isCastrated: true, furColor: BLUE, weight: 10, size: 10, photo: ""}
      ) {
        __typename
        animal {
          __typename
          name
        }
      }
    }
    """

  public let operationName: String = "newAnimalMutation"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Mutation"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("newAnimal", arguments: ["input": ["ownerID": "b8bf0a98-dcea-46f4-8cf8-155e4e1a53cb", "name": "testMutationAnimalName", "specie": "DOG", "gender": "MALE", "race": "SHIBA", "description": "testMutationAnimalDescription", "age": 10, "isCastrated": true, "furColor": "BLUE", "weight": 10, "size": 10, "photo": ""]], type: .object(NewAnimal.selections)),
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
            GraphQLField("name", type: .scalar(String.self)),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(name: String? = nil) {
          self.init(unsafeResultMap: ["__typename": "Animals", "name": name])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
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
      }
    }
  }
}

public final class NewAnnoucementMutationMutation: GraphQLMutation {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    mutation newAnnoucementMutation {
      newAnnoucement(
        input: {animalID: "5c640084-bf25-4961-b6c6-de26f2e5c80e", title: "testMutationAnnoucementTiTLE", description: "testMutationAnnoucementDescription", announcementType: VENTE}
      ) {
        __typename
        annonce {
          __typename
          title
        }
      }
    }
    """

  public let operationName: String = "newAnnoucementMutation"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Mutation"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("newAnnoucement", arguments: ["input": ["animalID": "5c640084-bf25-4961-b6c6-de26f2e5c80e", "title": "testMutationAnnoucementTiTLE", "description": "testMutationAnnoucementDescription", "announcementType": "VENTE"]], type: .object(NewAnnoucement.selections)),
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
            GraphQLField("title", type: .scalar(String.self)),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(title: String? = nil) {
          self.init(unsafeResultMap: ["__typename": "Annonce", "title": title])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
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
          lastName
          firstName
        }
      }
    }
    """

  public let operationName: String = "newUserMutationWithVariables"

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
            GraphQLField("lastName", type: .scalar(String.self)),
            GraphQLField("firstName", type: .scalar(String.self)),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(lastName: String? = nil, firstName: String? = nil) {
          self.init(unsafeResultMap: ["__typename": "User", "lastName": lastName, "firstName": firstName])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
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
          name
        }
      }
    }
    """

  public let operationName: String = "newAnimalMutationWithVariables"

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
            GraphQLField("name", type: .scalar(String.self)),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(name: String? = nil) {
          self.init(unsafeResultMap: ["__typename": "Animals", "name": name])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
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
          title
        }
      }
    }
    """

  public let operationName: String = "newAnnoucementMutationWithVariables"

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
            GraphQLField("title", type: .scalar(String.self)),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(title: String? = nil) {
          self.init(unsafeResultMap: ["__typename": "Annonce", "title": title])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
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
}
