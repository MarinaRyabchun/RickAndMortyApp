//
//  OriginView.swift
//  RickAndMorty
//
//  Created by Марина Рябчун on 21.08.2023.
//

import SwiftUI

struct OriginView: View {
    
    let model: CellViewModel
    let locationName: String
    let locationType: String
    let contentSize: CGFloat = 64
    let imageSize: CGFloat = 24
    
    var body: some View {
            ZStack(alignment: .leading) {
                RoundedRectangle(cornerRadius: 16)
                    .frame(height: 80)
                    .foregroundColor(Color(Constants.Colors.blackCard))
                    HStack {
                        ZStack {
                            RoundedRectangle(cornerRadius: 16)
                                .frame(width: contentSize, height: contentSize)
                                .foregroundColor(Color(Constants.Colors.blackElement))
                            Image(Constants.Image.planet)
                                .frame(width: imageSize, height: imageSize)
                        }
                        VStack(alignment: .leading, spacing: 8) {
                            Text(locationName)
                                .font(Font(Constants.Fonts.title5))
                                .foregroundColor(Color(Constants.Colors.whiteColor))
                            Text(locationType)
                                .font(Font(Constants.Fonts.bodySmall))
                                .foregroundColor(Color(Constants.Colors.primary))
                        }
                    }
                .padding(.horizontal, 8)
            }
        .frame(height: 122)
    }
}

struct OriginView_Previews: PreviewProvider {
    static var previews: some View {
        OriginView(model: CellViewModel.mockCharacter(), locationName: "Earth", locationType: "Planet")
    }
}
