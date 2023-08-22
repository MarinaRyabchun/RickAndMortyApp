//
//  InfoView.swift
//  RickAndMorty
//
//  Created by Марина Рябчун on 21.08.2023.
//

import SwiftUI

struct InfoView: View {
    
    let model: CellViewModel
    
    var body: some View {
            ZStack {
                RoundedRectangle(cornerRadius: 16)
                    .frame(height: 124)
                    .foregroundColor(Color(Constants.Colors.blackCard))
                VStack(spacing: 16) {
                    HStack {
                        Text("Species:")
                            .font(Font(Constants.Fonts.bodyDefault))
                            .foregroundColor(Color(Constants.Colors.grayNormal))
                        Spacer()
                        Text(model.species)
                            .font(Font(Constants.Fonts.bodyDefault))
                            .foregroundColor(Color(Constants.Colors.whiteColor))
                    }
                    HStack {
                        Text("Type:")
                            .font(Font(Constants.Fonts.bodyDefault))
                            .foregroundColor(Color(Constants.Colors.grayNormal))
                        Spacer()
                        Text(model.type.count == 0 ? "None" : model.type)
                            .font(Font(Constants.Fonts.bodyDefault))
                            .foregroundColor(Color(Constants.Colors.whiteColor))
                    }
                    HStack {
                        Text("Gender:")
                            .font(Font(Constants.Fonts.bodyDefault))
                            .foregroundColor(Color(Constants.Colors.grayNormal))
                        Spacer()
                        Text(model.gender)
                            .font(Font(Constants.Fonts.bodyDefault))
                            .foregroundColor(Color(Constants.Colors.whiteColor))
                    }
                }
                .padding(.horizontal, 16)
            }
        .frame(height: 166)
    }
}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
            InfoView(model: CellViewModel.mockCharacter())
    }
}
