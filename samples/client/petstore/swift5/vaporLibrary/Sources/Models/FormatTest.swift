//
// FormatTest.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import Vapor

public final class FormatTest: Content, Hashable {

    public var integer: Int?
    public var int32: Int?
    public var int64: Int64?
    public var number: Double
    public var float: Float?
    public var double: Double?
    public var string: String?
    public var byte: Data
    public var binary: Data?
    public var date: Date
    public var dateTime: Date?
    public var uuid: UUID?
    public var password: String

    public init(integer: Int? = nil, int32: Int? = nil, int64: Int64? = nil, number: Double, float: Float? = nil, double: Double? = nil, string: String? = nil, byte: Data, binary: Data? = nil, date: Date, dateTime: Date? = nil, uuid: UUID? = nil, password: String) {
        self.integer = integer
        self.int32 = int32
        self.int64 = int64
        self.number = number
        self.float = float
        self.double = double
        self.string = string
        self.byte = byte
        self.binary = binary
        self.date = date
        self.dateTime = dateTime
        self.uuid = uuid
        self.password = password
    }
    public enum CodingKeys: String, CodingKey, CaseIterable {
        case integer
        case int32
        case int64
        case number
        case float
        case double
        case string
        case byte
        case binary
        case date
        case dateTime
        case uuid
        case password
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encodeIfPresent(integer, forKey: .integer)
        try container.encodeIfPresent(int32, forKey: .int32)
        try container.encodeIfPresent(int64, forKey: .int64)
        try container.encode(number, forKey: .number)
        try container.encodeIfPresent(float, forKey: .float)
        try container.encodeIfPresent(double, forKey: .double)
        try container.encodeIfPresent(string, forKey: .string)
        try container.encode(byte, forKey: .byte)
        try container.encodeIfPresent(binary, forKey: .binary)
        try container.encode(date, forKey: .date)
        try container.encodeIfPresent(dateTime, forKey: .dateTime)
        try container.encodeIfPresent(uuid, forKey: .uuid)
        try container.encode(password, forKey: .password)
    }

    // Decodable protocol methods

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        integer = try container.decodeIfPresent(Int.self, forKey: .integer)
        int32 = try container.decodeIfPresent(Int.self, forKey: .int32)
        int64 = try container.decodeIfPresent(Int64.self, forKey: .int64)
        number = try container.decode(Double.self, forKey: .number)
        float = try container.decodeIfPresent(Float.self, forKey: .float)
        double = try container.decodeIfPresent(Double.self, forKey: .double)
        string = try container.decodeIfPresent(String.self, forKey: .string)
        byte = try container.decode(Data.self, forKey: .byte)
        binary = try container.decodeIfPresent(Data.self, forKey: .binary)
        date = try container.decode(Date.self, forKey: .date)
        dateTime = try container.decodeIfPresent(Date.self, forKey: .dateTime)
        uuid = try container.decodeIfPresent(UUID.self, forKey: .uuid)
        password = try container.decode(String.self, forKey: .password)
    }
}

extension FormatTest: Hashable {
    public static func == (lhs: FormatTest, rhs: FormatTest) -> Bool {
        lhs.integer == rhs.integer &&
        lhs.int32 == rhs.int32 &&
        lhs.int64 == rhs.int64 &&
        lhs.number == rhs.number &&
        lhs.float == rhs.float &&
        lhs.double == rhs.double &&
        lhs.string == rhs.string &&
        lhs.byte == rhs.byte &&
        lhs.binary == rhs.binary &&
        lhs.date == rhs.date &&
        lhs.dateTime == rhs.dateTime &&
        lhs.uuid == rhs.uuid &&
        lhs.password == rhs.password
        
    }

    public func hash(into hasher: inout Hasher) {
        hasher.combine(integer?.hashValue)
        hasher.combine(int32?.hashValue)
        hasher.combine(int64?.hashValue)
        hasher.combine(number.hashValue)
        hasher.combine(float?.hashValue)
        hasher.combine(double?.hashValue)
        hasher.combine(string?.hashValue)
        hasher.combine(byte.hashValue)
        hasher.combine(binary?.hashValue)
        hasher.combine(date.hashValue)
        hasher.combine(dateTime?.hashValue)
        hasher.combine(uuid?.hashValue)
        hasher.combine(password.hashValue)
        
    }
}

