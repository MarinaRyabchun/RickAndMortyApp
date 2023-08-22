//
//  AsyncImageView.swift
//  RickAndMorty
//
//  Created by Марина Рябчун on 21.08.2023.
//

import SwiftUI

struct AsyncImageView: View {
    let url: String?
    let imageWidth: CGFloat
    let imageHeight: CGFloat
    
    var body: some View {
        if url != nil {
            AsyncImage(url: URL(string: url!)) { phase in
                if let image = phase.image {
                    image.resizable()
                        .scaledToFit()
                        .cornerRadius(15)
                        .frame(width: imageWidth, height: imageHeight)
                } else if phase.error != nil {
                    
                    Text(phase.error?.localizedDescription ?? "error")
                        .foregroundColor(Color.pink)
                        .frame(width: imageWidth, height: imageHeight)
                } else {
                    ProgressView()
                        .frame(width: imageWidth, height: imageHeight)
                }
            }
        }else {
            Color("grayNormal").frame(width: imageWidth, height: imageHeight)
        }
    }
}

struct AsyncImageView_Previews: PreviewProvider {
    static var previews: some View {
        AsyncImageView(url: "https://rickandmortyapi.com/api/character/avatar/1.jpeg", imageWidth: 148, imageHeight: 148)
    }
}

