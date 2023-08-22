//
//  EpisodeCellForGrid.swift
//  RickAndMorty
//
//  Created by Марина Рябчун on 22.08.2023.
//

import SwiftUI

struct EpisodeCellForGrid: View {
    
    let model: CellViewModel
    let episodeName: String
    let episodeEpisode: String
    let episodeAirDate: String
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 16)
                .frame(height: 80)
                .foregroundColor(Color(Constants.Colors.blackCard))
            VStack(alignment: .leading, spacing: 16) {
                Text(episodeName)
                    .font(Font(Constants.Fonts.title5))
                    .foregroundColor(Color(Constants.Colors.whiteColor))
                HStack {
                    Text(episodeEpisode.getStyledEpisode())
                        .font(Font(Constants.Fonts.bodySmall))
                        .foregroundColor(Color(Constants.Colors.primary))
                    Spacer()
                    Text(episodeAirDate)
                        .font(Font(Constants.Fonts.bodyExtraSmall))
                        .foregroundColor(Color(Constants.Colors.textSecond))
                }
            }
            .padding(.horizontal, 16)
        }
        .frame(height: 80)
    }
}

struct EpisodeCellForGrid_Previews: PreviewProvider {
    static var previews: some View {
        EpisodeCellForGrid(model: CellViewModel.mockCharacter(), episodeName: "Pilot", episodeEpisode: "S01E01", episodeAirDate: "December 2, 2013")
    }
}
