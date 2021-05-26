//
// ClassModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Model for testing model with \&quot;_class\&quot; property */
public final class ClassModel: Codable, Hashable {

    public var _class: String?

    public init(_class: String? = nil) {
        self._class = _class
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case _class
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(_class, forKey: ._class)
    }

    public static func == (lhs: ClassModel, rhs: ClassModel) -> Bool {
        lhs._class == rhs._class
        
    }

    public func hash(into hasher: inout Hasher) {
        hasher.combine(_class?.hashValue)
        
    }
}

