//
//  RMCharacterStatus.swift
//  RickyAndMorty
//
//  Created by vfa on 07/03/2023.
//

import Foundation

enum RMCharacterStatus: String, Codable {
    // Alive, dead or unknown
    case alive = "Alive"
    case dead = "Dead"
    case unknown = "unknown"
}
