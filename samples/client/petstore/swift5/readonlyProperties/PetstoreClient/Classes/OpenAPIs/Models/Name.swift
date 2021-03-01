//
// Name.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation



/** Model for testing model name same as property name */
public struct Name: Codable, Hashable {

    public private(set) var name: Int
    public private(set) var snakeCase: Int?
    public private(set) var property: String?
    public private(set) var _123number: Int?

    public init(name: Int, snakeCase: Int? = nil, property: String? = nil, _123number: Int? = nil) {
        self.name = name
        self.snakeCase = snakeCase
        self.property = property
        self._123number = _123number
    }
    public enum CodingKeys: String, CodingKey, CaseIterable {
        case name
        case snakeCase = "snake_case"
        case property
        case _123number = "123Number"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encode(name, forKey: .name)
        try container.encodeIfPresent(snakeCase, forKey: .snakeCase)
        try container.encodeIfPresent(property, forKey: .property)
        try container.encodeIfPresent(_123number, forKey: ._123number)
    }

    // Decodable protocol methods

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        name = try container.decode(Int.self, forKey: .name)
        snakeCase = try container.decodeIfPresent(Int.self, forKey: .snakeCase)
        property = try container.decodeIfPresent(String.self, forKey: .property)
        _123number = try container.decodeIfPresent(Int.self, forKey: ._123number)
    }
}

extension Name: Hashable {
    public static func == (lhs: Name, rhs: Name) -> Bool {
        lhs.name == rhs.name &&
        lhs.snakeCase == rhs.snakeCase &&
        lhs.property == rhs.property &&
        lhs._123number == rhs._123number
        
    }

    public func hash(into hasher: inout Hasher) {
        hasher.combine(name.hashValue)
        hasher.combine(snakeCase?.hashValue)
        hasher.combine(property?.hashValue)
        hasher.combine(_123number?.hashValue)
        
    }
}

