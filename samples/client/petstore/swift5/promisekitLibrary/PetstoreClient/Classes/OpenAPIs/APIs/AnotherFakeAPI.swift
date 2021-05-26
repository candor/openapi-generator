//
// AnotherFakeAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import PromiseKit
import AnyCodable

open class AnotherFakeAPI {

    /**
     To test special tags
     
     - parameter body: (body) client model 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: Promise<Client>
     */
    open class func call123testSpecialTags( body: Client, apiResponseQueue: DispatchQueue = PetstoreClient.apiResponseQueue) -> Promise<Client> {
        let deferred = Promise<Client>.pending()
        call123testSpecialTagsWithRequestBuilder(body: body).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                deferred.resolver.fulfill(response.body!)
            case let .failure(error):
                deferred.resolver.reject(error)
            }
        }
        return deferred.promise
    }
    /**
     To test special tags
     - PATCH /another-fake/dummy
     - To test special tags and operation ID starting with number
     - parameter body: (body) client model 
     - returns: RequestBuilder<Client> 
     */
    open class func call123testSpecialTagsWithRequestBuilder(body: Client) -> RequestBuilder<Client> {
        let path = "/another-fake/dummy"
        let URLString = PetstoreClient.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body)

        let urlComponents = URLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Client>.Type = PetstoreClient.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PATCH", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

}
