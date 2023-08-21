//
//  EpisodeModel.swift
//  RickAndMorty
//
//  Created by Марина Рябчун on 19.08.2023.
//

import Foundation

// MARK: - Welcome
struct EpisodeData: Codable {
    let info: InfoEpisode
    let results: [ResultEpisode]
}

// MARK: - Info
struct InfoEpisode: Codable {
    let count, pages: Int
    let next: String
    let prev: String?
}

// MARK: - Result
struct ResultEpisode: Codable {
    let id: Int
    let name, airDate, episode: String
//    не используются
//    let characters: [String]
//    let url: String
//    let created: String
//
//    enum CodingKeys: String, CodingKey {
//        case id, name
//        case airDate = "air_date"
//        case episode, characters, url, created
//    }
}
