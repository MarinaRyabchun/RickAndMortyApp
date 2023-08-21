//
//  CharacterCell.swift
//  RickAndMorty
//
//  Created by Марина Рябчун on 19.08.2023.
//

import UIKit

class CharacterCollectionViewCell: UICollectionViewCell {

    private var viewModel = CharactersViewModel()
    private let label = UILabel()
    private let imageView = UIImageView()
    private let content = UIView()

    override init(frame: CGRect) {
        super.init(frame: frame)
        setupStyle()
        setupConstraints()
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError()
    }
    
    func configure1(model: CellViewModel) {
        label.text = model.name
        imageView.downloaded(from: model.image)
    }
    
    private func setupStyle() {
        backgroundColor = Constants.Colors.blackCard
        layer.cornerRadius = 16
        
        label.textColor = Constants.Colors.whiteColor
        label.font = Constants.Fonts.title5
        label.textAlignment = .center
        
        imageView.backgroundColor = Constants.Colors.grayNormal
        imageView.contentMode = .scaleAspectFit
        imageView.layer.cornerRadius = 10
        imageView.layer.masksToBounds = true
    }

    private func setupConstraints() {
        contentView.addSubview(label)
        contentView.addSubview(imageView)
        
        label.translatesAutoresizingMaskIntoConstraints = false
        imageView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            contentView.heightAnchor.constraint(equalToConstant: 202),
            contentView.widthAnchor.constraint(equalToConstant: 156),
            
            imageView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 8),
            imageView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 8),
            imageView.heightAnchor.constraint(equalToConstant: 140),
            imageView.widthAnchor.constraint(equalToConstant: 140),
            
            label.topAnchor.constraint(equalTo: imageView.bottomAnchor, constant: 16),
            label.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 8),
            label.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -8),
            label.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -16),
        ])
    }
}

