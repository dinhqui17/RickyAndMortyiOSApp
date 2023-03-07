//
//  RMRequest.swift
//  RickyAndMorty
//
//  Created by vfa on 07/03/2023.
//

import Foundation

/// Object that represents a singlet API call
final class RMRequest {
    
    // API Constants
    private struct Constants {
        static let baseUrl = "https://rickandmortyapi.com/api"
    }
    
    // Desired endpoint
    let endpoint: RMEndpoint
    
    // Path components for API, if any
    let pathComponents: Set<String>
    
    // Query agruments for API, if any
    let queryParameters: [URLQueryItem]
    
    
    /// Constructed URL for the API request in String format
    private var urlString: String {
        var string = Constants.baseUrl
        string += "/"
        string += endpoint.rawValue // rawValue is case as String
        
        if !pathComponents.isEmpty {
            string += "/"
            pathComponents.forEach({
                string += "/\($0)"
            })
        }
        
        if !queryParameters.isEmpty {
            string += "?"
            // name=value&name=value
            let agrumentString = queryParameters.compactMap({
                guard let value = $0.value else { return nil}
                return "\($0.name)=\(value)"
            }).joined(separator: "&")
            string += agrumentString
        }
        return string
    }
    
    // Computed & constructed API URL
    public var url: URL? {
        return URL(string: urlString)
    }
    
    // Desired http method
    public let httpMethod = "GET"
    
    
    /// Construct request
    /// - Parameters:
    ///   - endpoint: Target endpoint
    ///   - pathComponents: Collection of path components
    ///   - queryParameters: Collection of query parameters
    public init(endpoint: RMEndpoint, pathComponents: Set<String> = [], queryParameters: [URLQueryItem] = []) {
        self.endpoint = endpoint
        self.pathComponents = pathComponents
        self.queryParameters = queryParameters
    }
    
}
