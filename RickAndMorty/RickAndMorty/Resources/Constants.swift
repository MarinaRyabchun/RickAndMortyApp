//
//  Constants.swift
//  RickAndMorty
//
//  Created by Марина Рябчун on 19.08.2023.
//

import UIKit

enum Constants{
    enum Colors{
        static var blackBG: UIColor?{
            UIColor(named: "blackBG")
        }
        static var blackCard: UIColor?{
            UIColor(named: "blackCard")
        }
        static var grayNormal: UIColor?{
            UIColor(named: "grayNormal")
        }
        static var primary: UIColor?{
            UIColor(named: "primary")
        }
        static var textSecond: UIColor?{
            UIColor(named: "textSecond")
        }
        static var whiteColor: UIColor?{
            UIColor(named: "whiteColor")
        }
    }
    enum Fonts{
        static var title2: UIFont?{
            UIFont(name: "Gilroy-Bold", size: 28)
        }
        static var title3: UIFont?{
            UIFont(name: "Gilroy-Bold", size: 22)
        }
        static var title5: UIFont?{
            UIFont(name: "Gilroy-Semibold", size: 17)
        }
        static var bodyDefault: UIFont?{
            UIFont(name: "Gilroy-Medium", size: 16)
        }
        static var bodySmall: UIFont?{
            UIFont(name: "Gilroy-Medium", size: 13)
        }
        static var bodyExtraSmall: UIFont?{
            UIFont(name: "Gilroy-Medium", size: 12)
        }
    }
    enum Image {
        static let launchBackground = "launchBackground"
        static let launchImage = "launchImage"
        static let launchTitle = "launchTitle"
        static let planet = "planet"
    }
}
