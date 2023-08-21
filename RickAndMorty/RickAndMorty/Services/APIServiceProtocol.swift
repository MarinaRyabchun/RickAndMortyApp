//
//  APIServiceProtocol.swift
//  RickAndMorty
//
//  Created by Марина Рябчун on 20.08.2023.
//

import Foundation

protocol APIServiceProtocol {
    func fetch<T: Decodable>(_ type: T.Type, url: URL?, completion: @escaping(Result<T, APIError>) -> Void)
}
