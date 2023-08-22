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
    let status: String
    let species: String
    let type: String
    let gender: String
    let origin, location: Location
    let image: String
    let episode: [String]
}

// MARK: - Location
struct Location: Codable {
    let name: String
    let url: String
}

