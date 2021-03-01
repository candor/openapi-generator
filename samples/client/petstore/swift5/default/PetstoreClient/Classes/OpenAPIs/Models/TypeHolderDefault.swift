//
// TypeHolderDefault.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation


public struct TypeHolderDefault: Codable, Hashable {

    public var stringItem: String = "what"
    public var numberItem: Double
    public var integerItem: Int
    public var boolItem: Bool = true
    public var arrayItem: [Int]

    public init(stringItem: String = "what", numberItem: Double, integerItem: Int, boolItem: Bool = true, arrayItem: [Int]) {
        self.stringItem = stringItem
        self.numberItem = numberItem
        self.integerItem = integerItem
        self.boolItem = boolItem
        self.arrayItem = arrayItem
    }
    public enum CodingKeys: String, CodingKey, CaseIterable {
        case stringItem = "string_item"
        case numberItem = "number_item"
        case integerItem = "integer_item"
        case boolItem = "bool_item"
        case arrayItem = "array_item"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encode(stringItem, forKey: .stringItem)
        try container.encode(numberItem, forKey: .numberItem)
        try container.encode(integerItem, forKey: .integerItem)
        try container.encode(boolItem, forKey: .boolItem)
        try container.encode(arrayItem, forKey: .arrayItem)
    }

    // Decodable protocol methods

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        stringItem = try container.decode(String.self, forKey: .stringItem)
        numberItem = try container.decode(Double.self, forKey: .numberItem)
        integerItem = try container.decode(Int.self, forKey: .integerItem)
        boolItem = try container.decode(Bool.self, forKey: .boolItem)
        arrayItem = try container.decode([Int].self, forKey: .arrayItem)
    }
}

extension TypeHolderDefault: Hashable {
    public static func == (lhs: TypeHolderDefault, rhs: TypeHolderDefault) -> Bool {
        lhs.stringItem == rhs.stringItem &&
        lhs.numberItem == rhs.numberItem &&
        lhs.integerItem == rhs.integerItem &&
        lhs.boolItem == rhs.boolItem &&
        lhs.arrayItem == rhs.arrayItem
        
    }

    public func hash(into hasher: inout Hasher) {
        hasher.combine(stringItem.hashValue)
        hasher.combine(numberItem.hashValue)
        hasher.combine(integerItem.hashValue)
        hasher.combine(boolItem.hashValue)
        hasher.combine(arrayItem.hashValue)
        
    }
}

