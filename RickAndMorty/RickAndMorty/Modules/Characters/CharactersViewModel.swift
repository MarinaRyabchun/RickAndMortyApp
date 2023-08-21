//
//  CharactersViewModel.swift
//  RickAndMorty
//
//  Created by Марина Рябчун on 19.08.2023.
//

import Foundation

protocol CharactersViewModelProtocol {
    var service: APIServiceProtocol { get }
    var users: Observable<[CellViewModel]> { get }
    func fetchData()
}

final class CharactersViewModel: CharactersViewModelProtocol {
    
    var service: APIServiceProtocol = APIService()
    var users: Observable<[CellViewModel]> = Observable([])
    
    var updateLoadingState: (() -> Void)?
    var isLoading: Bool = false {
        didSet {
            updateLoadingState?()
        }
    }
    
    func fetchData() {
        guard let url = URL(string: "https://rickandmortyapi.com/api/character") else {
            return
        }
        self.isLoading = true
        service.fetch(CharactersData.self, url: url) { [weak self] result in

            DispatchQueue.main.async {
                switch result {
                case .failure(let error):
                    print(error)
                case .success(let characters):
                    self?.users.value = characters.results.compactMap({
                        CellViewModel(id: $0.id, name: $0.name, status: $0.status, species: $0.species, type: $0.type, gender: $0.gender, origin: $0.origin, location: $0.location, image: $0.image, episode: $0.episode)
                    })
                }
            }
        }
        self.isLoading = false
    }
}

class Observable<T> {
    var value: T? {
        didSet {
            listener?(value)
        }
    }
    init(_ value: T?) {
        self.value = value
    }
    private var listener: ((T?) -> Void)?
    func bind(_ listener: @escaping (T?) -> Void) {
        listener(value)
        self.listener = listener
    }
}
