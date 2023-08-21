//
//  LocationModel.swift
//  RickAndMorty
//
//  Created by Марина Рябчун on 19.08.2023.
//

import Foundation

// MARK: - Welcome
struct LocationData: Codable {
    let info: InfoLocation
    let results: [ResultLocation]
}

// MARK: - Info
struct InfoLocation: Codable {
    let count, pages: Int
    let next: String?
    let prev: String?
}

// MARK: - Result
struct ResultLocation: Codable {
    let id: Int
    let name, type: String
//    не используются
//    let dimension: String
//    let residents: [String]
//    let url: String
//    let created: String
}
