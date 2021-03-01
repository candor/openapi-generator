//
// Category.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation



/** A category for a pet */
public struct Category: Codable, Hashable {

    public var id: Int64?
    public var name: String?

    public init(id: Int64? = nil, name: String? = nil) {
        self.id = id
        self.name = name
    }
    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case name
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encodeIfPresent(id, forKey: .id)
        try container.encodeIfPresent(name, forKey: .name)
    }

    // Decodable protocol methods

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        id = try container.decodeIfPresent(Int64.self, forKey: .id)
        name = try container.decodeIfPresent(String.self, forKey: .name)
    }
}

extension Category: Hashable {
    public static func == (lhs: Category, rhs: Category) -> Bool {
        lhs.id == rhs.id &&
        lhs.name == rhs.name
        
    }

    public func hash(into hasher: inout Hasher) {
        hasher.combine(id?.hashValue)
        hasher.combine(name?.hashValue)
        
    }
}

