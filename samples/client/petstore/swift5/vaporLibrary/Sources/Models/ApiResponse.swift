//
// ApiResponse.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import Vapor

public final class ApiResponse: Content, Hashable {

    public var code: Int?
    public var type: String?
    public var message: String?

    public init(code: Int? = nil, type: String? = nil, message: String? = nil) {
        self.code = code
        self.type = type
        self.message = message
    }
    public enum CodingKeys: String, CodingKey, CaseIterable {
        case code
        case type
        case message
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encodeIfPresent(code, forKey: .code)
        try container.encodeIfPresent(type, forKey: .type)
        try container.encodeIfPresent(message, forKey: .message)
    }

    // Decodable protocol methods

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        code = try container.decodeIfPresent(Int.self, forKey: .code)
        type = try container.decodeIfPresent(String.self, forKey: .type)
        message = try container.decodeIfPresent(String.self, forKey: .message)
    }
}

extension ApiResponse: Hashable {
    public static func == (lhs: ApiResponse, rhs: ApiResponse) -> Bool {
        lhs.code == rhs.code &&
        lhs.type == rhs.type &&
        lhs.message == rhs.message
        
    }

    public func hash(into hasher: inout Hasher) {
        hasher.combine(code?.hashValue)
        hasher.combine(type?.hashValue)
        hasher.combine(message?.hashValue)
        
    }
}

