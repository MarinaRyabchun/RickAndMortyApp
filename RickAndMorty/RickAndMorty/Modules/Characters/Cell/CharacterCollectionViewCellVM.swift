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
    let status: Status
    let species: Species
    let type: String
    let gender: Gender
    let origin, location: Location
    let image: String
    let episode: [String]
}
