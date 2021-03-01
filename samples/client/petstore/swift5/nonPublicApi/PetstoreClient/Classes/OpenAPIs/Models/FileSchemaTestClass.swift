//
// FileSchemaTestClass.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation


internal struct FileSchemaTestClass: Codable, Hashable {

    internal var file: File?
    internal var files: [File]?

    internal init(file: File? = nil, files: [File]? = nil) {
        self.file = file
        self.files = files
    }
    internal enum CodingKeys: String, CodingKey, CaseIterable {
        case file
        case files
    }

    // Encodable protocol methods

    internal func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encodeIfPresent(file, forKey: .file)
        try container.encodeIfPresent(files, forKey: .files)
    }

    // Decodable protocol methods

    internal init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        file = try container.decodeIfPresent(File.self, forKey: .file)
        files = try container.decodeIfPresent([File].self, forKey: .files)
    }
}

extension FileSchemaTestClass: Hashable {
    internal static func == (lhs: FileSchemaTestClass, rhs: FileSchemaTestClass) -> Bool {
        lhs.file == rhs.file &&
        lhs.files == rhs.files
        
    }

    internal func hash(into hasher: inout Hasher) {
        hasher.combine(file?.hashValue)
        hasher.combine(files?.hashValue)
        
    }
}

