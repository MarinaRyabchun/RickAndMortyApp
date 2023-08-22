//
//  DetailViewModel.swift
//  RickAndMorty
//
//  Created by Марина Рябчун on 21.08.2023.
//

import Foundation

final class DetailViewModel: ObservableObject {
    
    @Published var model: CellViewModel
    @Published var location: ResultLocation?
    @Published var episodes: [ResultEpisode] = []
    
    let service: APIServiceProtocol
    
    init(model: CellViewModel, service: APIServiceProtocol = APIService()) {
        self.model = model
        self.service = service
        
        fetchLocation()
        fetchEpisode()
    }
    
    func fetchLocation() {
        
        guard let url = URL(string: model.origin.url) else {
            return
        }
        service.fetch(ResultLocation.self, url: url) { [weak self] result in

            DispatchQueue.main.async {
                switch result {
                case .failure(let error):
                    print(error)
                case .success(let location):
                    self?.location = location
                }
            }
        }
    }
    
    func fetchEpisode() {
        for url in self.model.episode {
            guard let urlString = URL(string: url) else {
                return
            }
            service.fetch(ResultEpisode.self, url: urlString) { result in

                DispatchQueue.main.async {
                    switch result {
                    case .failure(let error):
                        print(error)
                    case .success(let episode):
                        self.episodes.append(episode)
                    }
                }
            }
        }
    }
    
}
