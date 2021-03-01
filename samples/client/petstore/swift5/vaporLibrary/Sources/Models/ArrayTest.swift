//
// ArrayTest.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import Vapor

public final class ArrayTest: Content, Hashable {

    public var arrayOfString: [String]?
    public var arrayArrayOfInteger: [[Int64]]?
    public var arrayArrayOfModel: [[ReadOnlyFirst]]?

    public init(arrayOfString: [String]? = nil, arrayArrayOfInteger: [[Int64]]? = nil, arrayArrayOfModel: [[ReadOnlyFirst]]? = nil) {
        self.arrayOfString = arrayOfString
        self.arrayArrayOfInteger = arrayArrayOfInteger
        self.arrayArrayOfModel = arrayArrayOfModel
    }
    public enum CodingKeys: String, CodingKey, CaseIterable {
        case arrayOfString = "array_of_string"
        case arrayArrayOfInteger = "array_array_of_integer"
        case arrayArrayOfModel = "array_array_of_model"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encodeIfPresent(arrayOfString, forKey: .arrayOfString)
        try container.encodeIfPresent(arrayArrayOfInteger, forKey: .arrayArrayOfInteger)
        try container.encodeIfPresent(arrayArrayOfModel, forKey: .arrayArrayOfModel)
    }

    // Decodable protocol methods

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        arrayOfString = try container.decodeIfPresent([String].self, forKey: .arrayOfString)
        arrayArrayOfInteger = try container.decodeIfPresent([[Int64]].self, forKey: .arrayArrayOfInteger)
        arrayArrayOfModel = try container.decodeIfPresent([[ReadOnlyFirst]].self, forKey: .arrayArrayOfModel)
    }
}

extension ArrayTest: Hashable {
    public static func == (lhs: ArrayTest, rhs: ArrayTest) -> Bool {
        lhs.arrayOfString == rhs.arrayOfString &&
        lhs.arrayArrayOfInteger == rhs.arrayArrayOfInteger &&
        lhs.arrayArrayOfModel == rhs.arrayArrayOfModel
        
    }

    public func hash(into hasher: inout Hasher) {
        hasher.combine(arrayOfString?.hashValue)
        hasher.combine(arrayArrayOfInteger?.hashValue)
        hasher.combine(arrayArrayOfModel?.hashValue)
        
    }
}

