//
//  CharactersModel.swift
//  RickAndMorty
//
//  Created by Марина Рябчун on 19.08.2023.
//

import Foundation

// MARK: - Welcome
struct CharactersData: Codable {
    let info: InfoCharacters
    let results: [ResultCharacters]
}

// MARK: - Info
struct InfoCharacters: Codable {
    let count, pages: Int
    let next: String?
    let prev: String?
}

// MARK: - Result
struct ResultCharacters: Codable {
    let id: Int
    let name: String
    let status: Status
    let species: Species
    let type: String
    let gender: Gender
    let origin, location: Location
    let image: String
    let episode: [String]
//    не используются
//    let url: String
//    let created: String
}

enum Gender: String, Codable {
    case female = "Female"
    case male = "Male"
    case unknown = "unknown"
}

// MARK: - Location
struct Location: Codable {
    let name: String
    let url: String
}

enum Species: String, Codable {
    case alien = "Alien"
    case human = "Human"
}

enum Status: String, Codable {
    case alive = "Alive"
    case dead = "Dead"
    case unknown = "unknown"
}

