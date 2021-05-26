//
// ArrayOfArrayOfNumberOnly.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public final class ArrayOfArrayOfNumberOnly: Codable, Hashable {

    public var arrayArrayNumber: [[Double]]?

    public init(arrayArrayNumber: [[Double]]? = nil) {
        self.arrayArrayNumber = arrayArrayNumber
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case arrayArrayNumber = "ArrayArrayNumber"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(arrayArrayNumber, forKey: .arrayArrayNumber)
    }

    public static func == (lhs: ArrayOfArrayOfNumberOnly, rhs: ArrayOfArrayOfNumberOnly) -> Bool {
        lhs.arrayArrayNumber == rhs.arrayArrayNumber
        
    }

    public func hash(into hasher: inout Hasher) {
        hasher.combine(arrayArrayNumber?.hashValue)
        
    }
}

