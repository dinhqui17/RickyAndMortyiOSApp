//
//  RMService.swift
//  RickyAndMorty
//
//  Created by vfa on 07/03/2023.
//

import Foundation

/// Primary API service object to get Rick and Morty data
final class RMService {
    /// Shared singleton instance
    static let shared = RMService()
    
    /// Privatized constructor
    private init() {}
    
    /// Send Rick and Morty API call
    /// - Parameters:
    ///   - request: Request instance
    ///   - completion: Callback with data or error
    public func executed(_ request: RMRequest, completion: @escaping () -> Void) {}
}
