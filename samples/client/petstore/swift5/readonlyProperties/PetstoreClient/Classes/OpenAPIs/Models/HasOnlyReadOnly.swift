//
// HasOnlyReadOnly.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation


public struct HasOnlyReadOnly: Codable, Hashable {

    public private(set) var bar: String?
    public private(set) var foo: String?

    public init(bar: String? = nil, foo: String? = nil) {
        self.bar = bar
        self.foo = foo
    }
    public enum CodingKeys: String, CodingKey, CaseIterable {
        case bar
        case foo
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encodeIfPresent(bar, forKey: .bar)
        try container.encodeIfPresent(foo, forKey: .foo)
    }

    // Decodable protocol methods

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        bar = try container.decodeIfPresent(String.self, forKey: .bar)
        foo = try container.decodeIfPresent(String.self, forKey: .foo)
    }
}

extension HasOnlyReadOnly: Hashable {
    public static func == (lhs: HasOnlyReadOnly, rhs: HasOnlyReadOnly) -> Bool {
        lhs.bar == rhs.bar &&
        lhs.foo == rhs.foo
        
    }

    public func hash(into hasher: inout Hasher) {
        hasher.combine(bar?.hashValue)
        hasher.combine(foo?.hashValue)
        
    }
}

