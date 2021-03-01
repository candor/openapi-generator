//
// ClassModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import Vapor


/** Model for testing model with \&quot;_class\&quot; property */
public final class ClassModel: Content, Hashable {

    public var `class`: String?

    public init(`class`: String? = nil) {
        self.`class` = `class`
    }
    public enum CodingKeys: String, CodingKey, CaseIterable {
        case `class` = "_class"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encodeIfPresent(`class`, forKey: .`class`)
    }

    // Decodable protocol methods

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        `class` = try container.decodeIfPresent(String.self, forKey: .`class`)
    }
}

extension ClassModel: Hashable {
    public static func == (lhs: ClassModel, rhs: ClassModel) -> Bool {
        lhs.`class` == rhs.`class`
        
    }

    public func hash(into hasher: inout Hasher) {
        hasher.combine(`class`?.hashValue)
        
    }
}

