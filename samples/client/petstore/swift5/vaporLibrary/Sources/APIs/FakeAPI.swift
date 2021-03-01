//
// FakeAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import Vapor

open class FakeAPI {

    public enum FakeOuterBooleanSerialize {
        case http200(value: Bool?, raw: ClientResponse)
        case http0(value: Bool?, raw: ClientResponse)
    }

    /**

     POST /fake/outer/boolean

     Test serialization of outer boolean types

     - parameter body: (body) Input boolean as post body (optional)
     - returns: `EventLoopFuture` of `FakeOuterBooleanSerialize` 
     */
    open class func fakeOuterBooleanSerialize(body: Bool? = nil, headers: HTTPHeaders = PetstoreClient.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<FakeOuterBooleanSerialize> {
        let path = "/fake/outer/boolean"
        let URLString = PetstoreClient.basePath + path

        guard let apiClient = Configuration.apiClient else {
            fatalError("Configuration.apiClient is not set.")
        }

        return apiClient.send(.POST, headers: headers, to: URI(string: URLString)) { request in
            try Configuration.apiWrapper(&request)
            
            
            if let body = body {

                try request.content.encode(body)
            }
            
            try beforeSend(&request)
        }.flatMapThrowing { response -> FakeOuterBooleanSerialize in
            switch response.status.code {
            case 200:
                return .http200(value: try? response.content.decode(Bool.self, using: Configuration.contentConfiguration.requireDecoder(for: Bool.defaultContentType)), raw: response)
            default:
                return .http0(value: try? response.content.decode(Bool.self, using: Configuration.contentConfiguration.requireDecoder(for: Bool.defaultContentType)), raw: response)
            }
        }
    }



    public enum FakeOuterCompositeSerialize {
        case http200(value: OuterComposite?, raw: ClientResponse)
        case http0(value: OuterComposite?, raw: ClientResponse)
    }

    /**

     POST /fake/outer/composite

     Test serialization of object with outer number type

     - parameter body: (body) Input composite as post body (optional)
     - returns: `EventLoopFuture` of `FakeOuterCompositeSerialize` 
     */
    open class func fakeOuterCompositeSerialize(body: OuterComposite? = nil, headers: HTTPHeaders = PetstoreClient.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<FakeOuterCompositeSerialize> {
        let path = "/fake/outer/composite"
        let URLString = PetstoreClient.basePath + path

        guard let apiClient = Configuration.apiClient else {
            fatalError("Configuration.apiClient is not set.")
        }

        return apiClient.send(.POST, headers: headers, to: URI(string: URLString)) { request in
            try Configuration.apiWrapper(&request)
            
            
            if let body = body {

                try request.content.encode(body)
            }
            
            try beforeSend(&request)
        }.flatMapThrowing { response -> FakeOuterCompositeSerialize in
            switch response.status.code {
            case 200:
                return .http200(value: try? response.content.decode(OuterComposite.self, using: Configuration.contentConfiguration.requireDecoder(for: OuterComposite.defaultContentType)), raw: response)
            default:
                return .http0(value: try? response.content.decode(OuterComposite.self, using: Configuration.contentConfiguration.requireDecoder(for: OuterComposite.defaultContentType)), raw: response)
            }
        }
    }



    public enum FakeOuterNumberSerialize {
        case http200(value: Double?, raw: ClientResponse)
        case http0(value: Double?, raw: ClientResponse)
    }

    /**

     POST /fake/outer/number

     Test serialization of outer number types

     - parameter body: (body) Input number as post body (optional)
     - returns: `EventLoopFuture` of `FakeOuterNumberSerialize` 
     */
    open class func fakeOuterNumberSerialize(body: Double? = nil, headers: HTTPHeaders = PetstoreClient.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<FakeOuterNumberSerialize> {
        let path = "/fake/outer/number"
        let URLString = PetstoreClient.basePath + path

        guard let apiClient = Configuration.apiClient else {
            fatalError("Configuration.apiClient is not set.")
        }

        return apiClient.send(.POST, headers: headers, to: URI(string: URLString)) { request in
            try Configuration.apiWrapper(&request)
            
            
            if let body = body {

                try request.content.encode(body)
            }
            
            try beforeSend(&request)
        }.flatMapThrowing { response -> FakeOuterNumberSerialize in
            switch response.status.code {
            case 200:
                return .http200(value: try? response.content.decode(Double.self, using: Configuration.contentConfiguration.requireDecoder(for: Double.defaultContentType)), raw: response)
            default:
                return .http0(value: try? response.content.decode(Double.self, using: Configuration.contentConfiguration.requireDecoder(for: Double.defaultContentType)), raw: response)
            }
        }
    }



    public enum FakeOuterStringSerialize {
        case http200(value: String?, raw: ClientResponse)
        case http0(value: String?, raw: ClientResponse)
    }

    /**

     POST /fake/outer/string

     Test serialization of outer string types

     - parameter body: (body) Input string as post body (optional)
     - returns: `EventLoopFuture` of `FakeOuterStringSerialize` 
     */
    open class func fakeOuterStringSerialize(body: String? = nil, headers: HTTPHeaders = PetstoreClient.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<FakeOuterStringSerialize> {
        let path = "/fake/outer/string"
        let URLString = PetstoreClient.basePath + path

        guard let apiClient = Configuration.apiClient else {
            fatalError("Configuration.apiClient is not set.")
        }

        return apiClient.send(.POST, headers: headers, to: URI(string: URLString)) { request in
            try Configuration.apiWrapper(&request)
            
            
            if let body = body {

                try request.content.encode(body)
            }
            
            try beforeSend(&request)
        }.flatMapThrowing { response -> FakeOuterStringSerialize in
            switch response.status.code {
            case 200:
                return .http200(value: try? response.content.decode(String.self, using: Configuration.contentConfiguration.requireDecoder(for: String.defaultContentType)), raw: response)
            default:
                return .http0(value: try? response.content.decode(String.self, using: Configuration.contentConfiguration.requireDecoder(for: String.defaultContentType)), raw: response)
            }
        }
    }



    public enum TestBodyWithFileSchema {
        case http200(value: Void?, raw: ClientResponse)
        case http0(value: Void?, raw: ClientResponse)
    }

    /**

     PUT /fake/body-with-file-schema

     For this test, the body for this request much reference a schema named `File`.

     - parameter body: (body)  
     - returns: `EventLoopFuture` of `TestBodyWithFileSchema` 
     */
    open class func testBodyWithFileSchema(body: FileSchemaTestClass, headers: HTTPHeaders = PetstoreClient.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<TestBodyWithFileSchema> {
        let path = "/fake/body-with-file-schema"
        let URLString = PetstoreClient.basePath + path

        guard let apiClient = Configuration.apiClient else {
            fatalError("Configuration.apiClient is not set.")
        }

        return apiClient.send(.PUT, headers: headers, to: URI(string: URLString)) { request in
            try Configuration.apiWrapper(&request)
            
            
            try request.content.encode(body, using: Configuration.contentConfiguration.requireEncoder(for: FileSchemaTestClass.defaultContentType))
            
            try beforeSend(&request)
        }.flatMapThrowing { response -> TestBodyWithFileSchema in
            switch response.status.code {
            case 200:
                return .http200(value: (), raw: response)
            default:
                return .http0(value: (), raw: response)
            }
        }
    }



    public enum TestBodyWithQueryParams {
        case http200(value: Void?, raw: ClientResponse)
        case http0(value: Void?, raw: ClientResponse)
    }

    /**

     PUT /fake/body-with-query-params

     - parameter query: (query)  
     - parameter body: (body)  
     - returns: `EventLoopFuture` of `TestBodyWithQueryParams` 
     */
    open class func testBodyWithQueryParams(query: String, body: User, headers: HTTPHeaders = PetstoreClient.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<TestBodyWithQueryParams> {
        let path = "/fake/body-with-query-params"
        let URLString = PetstoreClient.basePath + path

        guard let apiClient = Configuration.apiClient else {
            fatalError("Configuration.apiClient is not set.")
        }

        return apiClient.send(.PUT, headers: headers, to: URI(string: URLString)) { request in
            try Configuration.apiWrapper(&request)
            
            struct QueryParams: Content {
                var query: String
            }
            try request.query.encode(QueryParams(query: query))
            try request.content.encode(body, using: Configuration.contentConfiguration.requireEncoder(for: User.defaultContentType))
            
            try beforeSend(&request)
        }.flatMapThrowing { response -> TestBodyWithQueryParams in
            switch response.status.code {
            case 200:
                return .http200(value: (), raw: response)
            default:
                return .http0(value: (), raw: response)
            }
        }
    }



    public enum TestClientModel {
        case http200(value: Client?, raw: ClientResponse)
        case http0(value: Client?, raw: ClientResponse)
    }

    /**
     To test \"client\" model

     PATCH /fake

     To test \"client\" model

     - parameter body: (body) client model 
     - returns: `EventLoopFuture` of `TestClientModel` 
     */
    open class func testClientModel(body: Client, headers: HTTPHeaders = PetstoreClient.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<TestClientModel> {
        let path = "/fake"
        let URLString = PetstoreClient.basePath + path

        guard let apiClient = Configuration.apiClient else {
            fatalError("Configuration.apiClient is not set.")
        }

        return apiClient.send(.PATCH, headers: headers, to: URI(string: URLString)) { request in
            try Configuration.apiWrapper(&request)
            
            
            try request.content.encode(body, using: Configuration.contentConfiguration.requireEncoder(for: Client.defaultContentType))
            
            try beforeSend(&request)
        }.flatMapThrowing { response -> TestClientModel in
            switch response.status.code {
            case 200:
                return .http200(value: try? response.content.decode(Client.self, using: Configuration.contentConfiguration.requireDecoder(for: Client.defaultContentType)), raw: response)
            default:
                return .http0(value: try? response.content.decode(Client.self, using: Configuration.contentConfiguration.requireDecoder(for: Client.defaultContentType)), raw: response)
            }
        }
    }



    public enum TestEndpointParameters {
        case http400(value: Void?, raw: ClientResponse)
        case http404(value: Void?, raw: ClientResponse)
        case http0(value: Void?, raw: ClientResponse)
    }

    /**
     Fake endpoint for testing various parameters  假端點  偽のエンドポイント  가짜 엔드 포인트

     POST /fake

     Fake endpoint for testing various parameters  假端點  偽のエンドポイント  가짜 엔드 포인트

     - BASIC:
       - type: http
       - name: http_basic_test
     - parameter number: (form) None 
     - parameter double: (form) None 
     - parameter patternWithoutDelimiter: (form) None 
     - parameter byte: (form) None 
     - parameter integer: (form) None (optional)
     - parameter int32: (form) None (optional)
     - parameter int64: (form) None (optional)
     - parameter float: (form) None (optional)
     - parameter string: (form) None (optional)
     - parameter binary: (form) None (optional)
     - parameter date: (form) None (optional)
     - parameter dateTime: (form) None (optional)
     - parameter password: (form) None (optional)
     - parameter callback: (form) None (optional)
     - returns: `EventLoopFuture` of `TestEndpointParameters` 
     */
    open class func testEndpointParameters(number: Double, double: Double, patternWithoutDelimiter: String, byte: Data, integer: Int? = nil, int32: Int? = nil, int64: Int64? = nil, float: Float? = nil, string: String? = nil, binary: Data? = nil, date: Date? = nil, dateTime: Date? = nil, password: String? = nil, callback: String? = nil, headers: HTTPHeaders = PetstoreClient.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<TestEndpointParameters> {
        let path = "/fake"
        let URLString = PetstoreClient.basePath + path

        guard let apiClient = Configuration.apiClient else {
            fatalError("Configuration.apiClient is not set.")
        }

        return apiClient.send(.POST, headers: headers, to: URI(string: URLString)) { request in
            try Configuration.apiWrapper(&request)
            
            
            struct FormParams: Content {
                static let defaultContentType = Vapor.HTTPMediaType.formData
                var integer: Int?
                var int32: Int?
                var int64: Int64?
                var number: Double
                var float: Float?
                var double: Double
                var string: String?
                var patternWithoutDelimiter: String
                var byte: Data
                var binary: Data?
                var date: Date?
                var dateTime: Date?
                var password: String?
                var callback: String?
            }
            try request.content.encode(FormParams(integer: integer, int32: int32, int64: int64, number: number, float: float, double: double, string: string, patternWithoutDelimiter: patternWithoutDelimiter, byte: byte, binary: binary, date: date, dateTime: dateTime, password: password, callback: callback), using: Configuration.contentConfiguration.requireEncoder(for: FormParams.defaultContentType))
            try beforeSend(&request)
        }.flatMapThrowing { response -> TestEndpointParameters in
            switch response.status.code {
            case 400:
                return .http400(value: (), raw: response)
            case 404:
                return .http404(value: (), raw: response)
            default:
                return .http0(value: (), raw: response)
            }
        }
    }



    /**
     * enum for parameter enumHeaderStringArray
     */
    public enum EnumHeaderStringArray_testEnumParameters: String, CaseIterable, Content {
        case greaterThan = ">"
        case dollar = "$"
    }

    /**
     * enum for parameter enumHeaderString
     */
    public enum EnumHeaderString_testEnumParameters: String, CaseIterable, Content {
        case abc = "_abc"
        case efg = "-efg"
        case xyz = "(xyz)"
    }

    /**
     * enum for parameter enumQueryStringArray
     */
    public enum EnumQueryStringArray_testEnumParameters: String, CaseIterable, Content {
        case greaterThan = ">"
        case dollar = "$"
    }

    /**
     * enum for parameter enumQueryString
     */
    public enum EnumQueryString_testEnumParameters: String, CaseIterable, Content {
        case abc = "_abc"
        case efg = "-efg"
        case xyz = "(xyz)"
    }

    /**
     * enum for parameter enumQueryInteger
     */
    public enum EnumQueryInteger_testEnumParameters: Int, CaseIterable, Content {
        case _1 = 1
        case number2 = -2
    }

    /**
     * enum for parameter enumQueryDouble
     */
    public enum EnumQueryDouble_testEnumParameters: Double, CaseIterable, Content {
        case _11 = 1.1
        case number12 = -1.2
    }

    /**
     * enum for parameter enumFormStringArray
     */
    public enum EnumFormStringArray_testEnumParameters: String, CaseIterable, Content {
        case greaterThan = ">"
        case dollar = "$"
    }

    /**
     * enum for parameter enumFormString
     */
    public enum EnumFormString_testEnumParameters: String, CaseIterable, Content {
        case abc = "_abc"
        case efg = "-efg"
        case xyz = "(xyz)"
    }

    public enum TestEnumParameters {
        case http400(value: Void?, raw: ClientResponse)
        case http404(value: Void?, raw: ClientResponse)
        case http0(value: Void?, raw: ClientResponse)
    }

    /**
     To test enum parameters

     GET /fake

     To test enum parameters

     - parameter enumHeaderStringArray: (header) Header parameter enum test (string array) (optional)
     - parameter enumHeaderString: (header) Header parameter enum test (string) (optional, default to .efg)
     - parameter enumQueryStringArray: (query) Query parameter enum test (string array) (optional)
     - parameter enumQueryString: (query) Query parameter enum test (string) (optional, default to .efg)
     - parameter enumQueryInteger: (query) Query parameter enum test (double) (optional)
     - parameter enumQueryDouble: (query) Query parameter enum test (double) (optional)
     - parameter enumFormStringArray: (form) Form parameter enum test (string array) (optional, default to .dollar)
     - parameter enumFormString: (form) Form parameter enum test (string) (optional, default to .efg)
     - returns: `EventLoopFuture` of `TestEnumParameters` 
     */
    open class func testEnumParameters(enumHeaderStringArray: [EnumHeaderStringArray_testEnumParameters]? = nil, enumHeaderString: EnumHeaderString_testEnumParameters? = nil, enumQueryStringArray: [EnumQueryStringArray_testEnumParameters]? = nil, enumQueryString: EnumQueryString_testEnumParameters? = nil, enumQueryInteger: EnumQueryInteger_testEnumParameters? = nil, enumQueryDouble: EnumQueryDouble_testEnumParameters? = nil, enumFormStringArray: [EnumFormStringArray_testEnumParameters]? = nil, enumFormString: EnumFormString_testEnumParameters? = nil, headers: HTTPHeaders = PetstoreClient.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<TestEnumParameters> {
        let path = "/fake"
        let URLString = PetstoreClient.basePath + path

        guard let apiClient = Configuration.apiClient else {
            fatalError("Configuration.apiClient is not set.")
        }

        return apiClient.send(.GET, headers: headers, to: URI(string: URLString)) { request in
            try Configuration.apiWrapper(&request)
            
            request.headers.add(name: "enum_header_string_array", value: enumHeaderStringArray?.map { $0.rawValue.description }.description ?? "")
            
            request.headers.add(name: "enum_header_string", value: enumHeaderString?.rawValue.description ?? "")
            
            struct QueryParams: Content {
                var enumQueryStringArray: [EnumQueryStringArray_testEnumParameters]?
                var enumQueryString: EnumQueryString_testEnumParameters?
                var enumQueryInteger: EnumQueryInteger_testEnumParameters?
                var enumQueryDouble: EnumQueryDouble_testEnumParameters?
            }
            try request.query.encode(QueryParams(enumQueryStringArray: enumQueryStringArray, enumQueryString: enumQueryString, enumQueryInteger: enumQueryInteger, enumQueryDouble: enumQueryDouble))
            struct FormParams: Content {
                static let defaultContentType = Vapor.HTTPMediaType.formData
                var enumFormStringArray: [EnumFormStringArray_testEnumParameters]?
                var enumFormString: EnumFormString_testEnumParameters?
            }
            try request.content.encode(FormParams(enumFormStringArray: enumFormStringArray, enumFormString: enumFormString), using: Configuration.contentConfiguration.requireEncoder(for: FormParams.defaultContentType))
            try beforeSend(&request)
        }.flatMapThrowing { response -> TestEnumParameters in
            switch response.status.code {
            case 400:
                return .http400(value: (), raw: response)
            case 404:
                return .http404(value: (), raw: response)
            default:
                return .http0(value: (), raw: response)
            }
        }
    }



    public enum TestGroupParameters {
        case http400(value: Void?, raw: ClientResponse)
        case http0(value: Void?, raw: ClientResponse)
    }

    /**
     Fake endpoint to test group parameters (optional)

     DELETE /fake

     Fake endpoint to test group parameters (optional)

     - parameter requiredStringGroup: (query) Required String in group parameters 
     - parameter requiredBooleanGroup: (header) Required Boolean in group parameters 
     - parameter requiredInt64Group: (query) Required Integer in group parameters 
     - parameter stringGroup: (query) String in group parameters (optional)
     - parameter booleanGroup: (header) Boolean in group parameters (optional)
     - parameter int64Group: (query) Integer in group parameters (optional)
     - returns: `EventLoopFuture` of `TestGroupParameters` 
     */
    open class func testGroupParameters(requiredStringGroup: Int, requiredBooleanGroup: Bool, requiredInt64Group: Int64, stringGroup: Int? = nil, booleanGroup: Bool? = nil, int64Group: Int64? = nil, headers: HTTPHeaders = PetstoreClient.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<TestGroupParameters> {
        let path = "/fake"
        let URLString = PetstoreClient.basePath + path

        guard let apiClient = Configuration.apiClient else {
            fatalError("Configuration.apiClient is not set.")
        }

        return apiClient.send(.DELETE, headers: headers, to: URI(string: URLString)) { request in
            try Configuration.apiWrapper(&request)
            
            request.headers.add(name: "required_boolean_group", value: requiredBooleanGroup.description)
            
            request.headers.add(name: "boolean_group", value: booleanGroup?.description ?? "")
            
            struct QueryParams: Content {
                var requiredStringGroup: Int
                var requiredInt64Group: Int64
                var stringGroup: Int?
                var int64Group: Int64?
            }
            try request.query.encode(QueryParams(requiredStringGroup: requiredStringGroup, requiredInt64Group: requiredInt64Group, stringGroup: stringGroup, int64Group: int64Group))
            
            try beforeSend(&request)
        }.flatMapThrowing { response -> TestGroupParameters in
            switch response.status.code {
            case 400:
                return .http400(value: (), raw: response)
            default:
                return .http0(value: (), raw: response)
            }
        }
    }



    public enum TestInlineAdditionalProperties {
        case http200(value: Void?, raw: ClientResponse)
        case http0(value: Void?, raw: ClientResponse)
    }

    /**
     test inline additionalProperties

     POST /fake/inline-additionalProperties

     - parameter param: (body) request body 
     - returns: `EventLoopFuture` of `TestInlineAdditionalProperties` 
     */
    open class func testInlineAdditionalProperties(param: [String: String], headers: HTTPHeaders = PetstoreClient.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<TestInlineAdditionalProperties> {
        let path = "/fake/inline-additionalProperties"
        let URLString = PetstoreClient.basePath + path

        guard let apiClient = Configuration.apiClient else {
            fatalError("Configuration.apiClient is not set.")
        }

        return apiClient.send(.POST, headers: headers, to: URI(string: URLString)) { request in
            try Configuration.apiWrapper(&request)
            
            
            try request.content.encode(param, using: Configuration.contentConfiguration.requireEncoder(for: [String: String].defaultContentType))
            
            try beforeSend(&request)
        }.flatMapThrowing { response -> TestInlineAdditionalProperties in
            switch response.status.code {
            case 200:
                return .http200(value: (), raw: response)
            default:
                return .http0(value: (), raw: response)
            }
        }
    }



    public enum TestJsonFormData {
        case http200(value: Void?, raw: ClientResponse)
        case http0(value: Void?, raw: ClientResponse)
    }

    /**
     test json serialization of form data

     GET /fake/jsonFormData

     - parameter param: (form) field1 
     - parameter param2: (form) field2 
     - returns: `EventLoopFuture` of `TestJsonFormData` 
     */
    open class func testJsonFormData(param: String, param2: String, headers: HTTPHeaders = PetstoreClient.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<TestJsonFormData> {
        let path = "/fake/jsonFormData"
        let URLString = PetstoreClient.basePath + path

        guard let apiClient = Configuration.apiClient else {
            fatalError("Configuration.apiClient is not set.")
        }

        return apiClient.send(.GET, headers: headers, to: URI(string: URLString)) { request in
            try Configuration.apiWrapper(&request)
            
            
            struct FormParams: Content {
                static let defaultContentType = Vapor.HTTPMediaType.formData
                var param: String
                var param2: String
            }
            try request.content.encode(FormParams(param: param, param2: param2), using: Configuration.contentConfiguration.requireEncoder(for: FormParams.defaultContentType))
            try beforeSend(&request)
        }.flatMapThrowing { response -> TestJsonFormData in
            switch response.status.code {
            case 200:
                return .http200(value: (), raw: response)
            default:
                return .http0(value: (), raw: response)
            }
        }
    }


}
