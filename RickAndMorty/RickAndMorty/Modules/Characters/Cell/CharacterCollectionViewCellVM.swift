//
//  CharacterCollectionViewCellVM.swift
//  RickAndMorty
//
//  Created by Марина Рябчун on 20.08.2023.
//

import Foundation

struct CellViewModel {
    let id: Int
    let name: String
    let status: String
    let species: String
    let type: String
    let gender: String
    let origin, location: Location
    let image: String
    let episode: [String]
    
    static func mockCharacter() -> CellViewModel {
        CellViewModel(id: 1,name :"Rick Sanchez", status: "Alive",
                      species: "Human", type: "", gender: "Male",
                      origin: Location(name: "Earth (C-137)", url: "https://rickandmortyapi.com/api/location/1"),
                      location: Location(name: "Citadel of Ricks", url: "https://rickandmortyapi.com/api/location/3"),
                      image: "https://rickandmortyapi.com/api/character/avatar/1.jpeg",
                      episode: [
            "https://rickandmortyapi.com/api/episode/1",
            "https://rickandmortyapi.com/api/episode/2",
            "https://rickandmortyapi.com/api/episode/3",
            "https://rickandmortyapi.com/api/episode/4",
            "https://rickandmortyapi.com/api/episode/5",
            "https://rickandmortyapi.com/api/episode/6",
            "https://rickandmortyapi.com/api/episode/7",
            "https://rickandmortyapi.com/api/episode/8",
            "https://rickandmortyapi.com/api/episode/9",
            "https://rickandmortyapi.com/api/episode/10",
            "https://rickandmortyapi.com/api/episode/11",
            "https://rickandmortyapi.com/api/episode/12",
            "https://rickandmortyapi.com/api/episode/13",
            "https://rickandmortyapi.com/api/episode/14",
            "https://rickandmortyapi.com/api/episode/15",
            "https://rickandmortyapi.com/api/episode/16"
        ])
    }
}
