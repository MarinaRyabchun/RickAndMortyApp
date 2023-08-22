//
//  ViewController.swift
//  RickAndMorty
//
//  Created by Марина Рябчун on 19.08.2023.
//

import UIKit

final class CharactersViewController: UIViewController {
    
    private let charactersView = CharactersView()
    private let viewModel = CharactersViewModel()
    
    override func loadView() {
        view = charactersView
    }

    override func viewDidLoad() {
        view = charactersView
        super.viewDidLoad()
        setupNavigationBar()
        charactersView.didLoad()
        charactersView.collectionView.dataSource = self
        charactersView.collectionView.delegate = self
        viewModel.fetchData()
        
        viewModel.updateLoadingState = { [weak self] in
            DispatchQueue.main.async {
                self?.charactersView.updateLoadingUI(isLoading: self?.viewModel.isLoading ?? false)
            }
        }
        
        viewModel.users.bind { [weak self] _ in
            DispatchQueue.main.async {
                self?.charactersView.collectionView.reloadData()
            }
        }
    }
    //    MARK: - View Methods
    private func setupNavigationBar() {
        navigationController?.navigationBar.titleTextAttributes = [ NSAttributedString.Key.font: Constants.Fonts.title2 ]
        navigationController?.navigationBar.prefersLargeTitles = true
        title = Constants.Text.characters
    }
}

extension CharactersViewController: UICollectionViewDataSource {

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        viewModel.users.value?.count ?? 0
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CharacterCollectionViewCell", for: indexPath) as! CharacterCollectionViewCell
        if let content = viewModel.users.value {
            cell.configure1(model: content[indexPath.row])
        }
        return cell
    }
}

extension CharactersViewController: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if let model = viewModel.users.value {
            let selectedCharacter = model[indexPath.row]
            let detailView = DetailView(viewModel: DetailViewModel(model: selectedCharacter))
            let hostingController = UIHostingController(rootView: detailView)
            hostingController.modalPresentationStyle = .fullScreen
            present(hostingController, animated: false)     
        }
    }
}

// MARK: - SwiftUI for Preview

import SwiftUI
struct MainProvider1: PreviewProvider {
    static var previews = ConteinerView()
    
    struct ConteinerView: UIViewControllerRepresentable {
        typealias UIViewControllerType = UINavigationController
        
        func makeUIViewController(context: Context) -> UINavigationController {
            let vc = CharactersViewController()
            let navController = UINavigationController(rootViewController: vc)
            return navController
        }
        
        func updateUIViewController(_ uiViewController: UINavigationController, context: Context) {
        }
    }
}
