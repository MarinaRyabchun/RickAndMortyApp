//
//  UINavigationController+Extension.swift
//  RickAndMorty
//
//  Created by Марина Рябчун on 19.08.2023.
//

import UIKit

extension UINavigationController {
    override open func viewWillLayoutSubviews() {
        let transparentAppearance = UINavigationBarAppearance()
        transparentAppearance.configureWithTransparentBackground()
        transparentAppearance.titleTextAttributes = [NSAttributedString.Key.foregroundColor : UIColor.white]
        transparentAppearance.largeTitleTextAttributes = [NSAttributedString.Key.foregroundColor : UIColor.white]
        transparentAppearance.backgroundColor = .black
        transparentAppearance.shadowColor = .black
        navigationBar.standardAppearance = transparentAppearance
        navigationBar.compactAppearance = transparentAppearance
        navigationBar.scrollEdgeAppearance = transparentAppearance
    }
}
