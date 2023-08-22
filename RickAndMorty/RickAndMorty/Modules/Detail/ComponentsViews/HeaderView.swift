//
//  HeaderView.swift
//  RickAndMorty
//
//  Created by Марина Рябчун on 21.08.2023.
//

import SwiftUI

struct HeaderView: View {
    
    let imageSize: CGFloat = 148
    let model: CellViewModel
    
    var body: some View {
        VStack(spacing: 8) {
            AsyncImageView(url: model.image, imageWidth: imageSize, imageHeight: imageSize)
            Text(model.name)
                .font(Font(Constants.Fonts.title3))
                .foregroundColor(Color(Constants.Colors.whiteColor))
                .padding(.top, 16)
            Text(model.status)
                .font(Font(Constants.Fonts.bodyDefault))
                .foregroundColor(Color(Constants.Colors.primary))
        }
        .frame(width: 148)
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 15)
                .frame(width: 350, height: 300)
                .foregroundColor(.black)
            HeaderView(model: CellViewModel.mockCharacter())
        }
    }
}
