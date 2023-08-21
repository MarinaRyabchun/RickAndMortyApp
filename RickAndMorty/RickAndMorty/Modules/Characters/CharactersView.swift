//
//  CharactersView.swift
//  RickAndMorty
//
//  Created by Марина Рябчун on 19.08.2023.
//

import UIKit

final class CharactersView: UIView {
    
    private var viewModel = CharactersViewModel()
    
    // MARK: - Properties
    private let spinner: UIActivityIndicatorView = {
        let spinner = UIActivityIndicatorView(style: .large)
        spinner.hidesWhenStopped = true
        return spinner
    }()
    
    lazy var collectionView =  UICollectionView(
        frame: .zero,
        collectionViewLayout: makeLayoutCollectionView()
    )
    
    // MARK: - Methods
    func updateLoadingUI(isLoading: Bool) {
        if isLoading {
            collectionView.isHidden = true
            spinner.startAnimating()
        } else {
            spinner.stopAnimating()
            collectionView.isHidden = false
        }
    }
    
    func didLoad() {
        setupView()
        setupStyle()
        setupConstraints()
    }
    
    private func setupView() {
        self.addSubview(spinner)
        self.addSubview(collectionView)
        collectionView.register(CharacterCollectionViewCell.self, forCellWithReuseIdentifier: "CharacterCollectionViewCell")
    }
    
    private func setupStyle() {
        self.backgroundColor = Constants.Colors.blackBG
        collectionView.backgroundColor = Constants.Colors.blackBG
    }
    
    private func setupConstraints() {
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        spinner.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            spinner.widthAnchor.constraint(equalToConstant: 100),
            spinner.heightAnchor.constraint(equalToConstant: 100),
            spinner.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            spinner.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            
            collectionView.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor),
            collectionView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20),
            collectionView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -20),
            collectionView.bottomAnchor.constraint(equalTo: self.safeAreaLayoutGuide.bottomAnchor),
        ])
    }
    
    private func makeLayoutCollectionView() -> UICollectionViewLayout {
        UICollectionViewCompositionalLayout { sectionIndex, env in
            let spacing = CGFloat(20)
            let itemSize = NSCollectionLayoutSize(widthDimension: .absolute(156),
                                                  heightDimension: .absolute(202))
            let item = NSCollectionLayoutItem(layoutSize: itemSize)
            
            let groupSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1.0),
                                                   heightDimension: .absolute(202))
            let group = NSCollectionLayoutGroup.horizontal(layoutSize: groupSize, subitems: [item, item])
            group.interItemSpacing = .fixed(spacing)

            let section = NSCollectionLayoutSection(group: group)
            section.interGroupSpacing = spacing
            section.contentInsets = .init(top: 20, leading: 0, bottom: 20, trailing: 0)
            return section
        }
    }
}

