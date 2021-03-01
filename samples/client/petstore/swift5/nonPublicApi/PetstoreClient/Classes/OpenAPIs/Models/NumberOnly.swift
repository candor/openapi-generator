//
// NumberOnly.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation


internal struct NumberOnly: Codable, Hashable {

    internal var justNumber: Double?

    internal init(justNumber: Double? = nil) {
        self.justNumber = justNumber
    }
    internal enum CodingKeys: String, CodingKey, CaseIterable {
        case justNumber = "JustNumber"
    }

    // Encodable protocol methods

    internal func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encodeIfPresent(justNumber, forKey: .justNumber)
    }

    // Decodable protocol methods

    internal init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        justNumber = try container.decodeIfPresent(Double.self, forKey: .justNumber)
    }
}

extension NumberOnly: Hashable {
    internal static func == (lhs: NumberOnly, rhs: NumberOnly) -> Bool {
        lhs.justNumber == rhs.justNumber
        
    }

    internal func hash(into hasher: inout Hasher) {
        hasher.combine(justNumber?.hashValue)
        
    }
}

