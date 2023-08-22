//
//  LocationModel.swift
//  RickAndMorty
//
//  Created by Марина Рябчун on 19.08.2023.
//

import Foundation

struct ResultLocation: Codable {
    let name, type: String
}

struct ResultEpisode: Codable, Identifiable {
    let id: Int
    let name, air_date, episode: String
}
