//
//  DetailView.swift
//  RickAndMorty
//
//  Created by Марина Рябчун on 21.08.2023.
//

import SwiftUI

struct DetailView: View {
    
    @ObservedObject var viewModel: DetailViewModel
    @Environment(\.dismiss) private var dismiss
    
    var body: some View {
        ZStack {
            Color(Constants.Colors.blackBG)
                .ignoresSafeArea()
            VStack(alignment: .leading) {
                Button {
                    dismiss()
                } label: {
                    Image(systemName: "chevron.left")
                }
                .frame(width: 24, height: 24)
                .foregroundColor(Color(Constants.Colors.whiteColor))
                .font(Font(Constants.Fonts.title5))
                .padding(.leading, 20)
                
                ScrollView {
                    HeaderView(model: viewModel.model)
                        .padding(.top, 20)
                    VStack (alignment: .leading, spacing: 16) {
                        Text(Constants.Text.info)
                            .font(Font(Constants.Fonts.title5))
                            .foregroundColor(Color(Constants.Colors.whiteColor))
                            .padding(.top, 10)
                        InfoView(model: viewModel.model)
                            .padding(.top, -10)
                        Text(Constants.Text.origin)
                            .font(Font(Constants.Fonts.title5))
                            .foregroundColor(Color(Constants.Colors.whiteColor))
                        OriginView(model: viewModel.model,
                                   locationName: viewModel.location?.name ?? "",
                                   locationType: viewModel.location?.type ?? "")
                        .padding(.top, -10)
                        
                        Text(Constants.Text.episodes)
                            .font(Font(Constants.Fonts.title5))
                            .foregroundColor(Color(Constants.Colors.whiteColor))
                            .padding(.bottom, 10)
                        LazyVGrid(columns: [GridItem()]) {
                            ForEach(viewModel.episodes, id: \.id) { episode in
                                EpisodeCellForGrid(model: viewModel.model, episodeName: episode.name,
                                                   episodeEpisode: episode.episode,
                                                   episodeAirDate: episode.air_date)
                            }
                            .padding(.bottom, 8)
                        }
                    }
                    .padding(.horizontal, 20)
                }
            }
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(viewModel: DetailViewModel(model: CellViewModel.mockCharacter()))
    }
}
