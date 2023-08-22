//
//  String+Extension.swift
//  RickAndMorty
//
//  Created by Марина Рябчун on 22.08.2023.
//

import Foundation

extension String {
    func getStyledEpisode() -> String {
        let info = self.dropFirst().split(separator: "E")
        if let episode = info.last, let season = info.first {
            return "Episode: \(Int(episode) ?? 0), Season: \(Int(season) ?? 0)"
        }
        return ("Unknown")
    }
}
