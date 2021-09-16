// @generated
//  This file was automatically generated and should not be edited.
//test

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

public final class AnimalzQueryTestQuery: GraphQLQuery {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    query AnimalzQueryTest {
      users {
        __typename
        userID
        firstName
        phoneNumber
        gender
        animalList {
          __typename
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

  public let operationName: String = "AnimalzQueryTest"

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
          GraphQLField("userID", type: .scalar(GraphQLID.self)),
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

      public init(userId: GraphQLID? = nil, firstName: String? = nil, phoneNumber: String? = nil, gender: HumanGender? = nil, animalList: [AnimalList?]? = nil) {
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

      public var userId: GraphQLID? {
        get {
          return resultMap["userID"] as? GraphQLID
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
            GraphQLField("name", type: .scalar(String.self)),
            GraphQLField("race", type: .scalar(RaceEnum.self)),
            GraphQLField("gender", type: .scalar(AnimalGender.self)),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(name: String? = nil, race: RaceEnum? = nil, gender: AnimalGender? = nil) {
          self.init(unsafeResultMap: ["__typename": "Animals", "name": name, "race": race, "gender": gender])
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
