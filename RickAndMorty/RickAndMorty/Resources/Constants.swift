//
//  Constants.swift
//  RickAndMorty
//
//  Created by Марина Рябчун on 19.08.2023.
//

import UIKit

enum Constants{
    enum Colors{
        static var blackBG: UIColor {
            UIColor(named: "blackBG") ?? UIColor.black
        }
        static var blackCard: UIColor {
            UIColor(named: "blackCard") ?? UIColor.black
        }
        static var blackElement: UIColor {
            UIColor(named: "blackElement") ?? UIColor.black
        }
        static var grayNormal: UIColor {
            UIColor(named: "grayNormal") ?? UIColor.gray
        }
        static var primary: UIColor {
            UIColor(named: "primary") ?? UIColor.green
        }
        static var textSecond: UIColor {
            UIColor(named: "textSecond") ?? UIColor.lightGray
        }
        static var whiteColor: UIColor {
            UIColor(named: "whiteColor") ?? UIColor.white
        }
    }
    enum Fonts{
        static var title2: UIFont {
            UIFont(name: "Gilroy-Bold", size: 28) ?? UIFont.systemFont(ofSize: 28)
        }
        static var title3: UIFont {
            UIFont(name: "Gilroy-Bold", size: 22) ?? UIFont.systemFont(ofSize: 22)
        }
        static var title5: UIFont {
            UIFont(name: "Gilroy-Semibold", size: 17) ?? UIFont.systemFont(ofSize: 17)
        }
        static var bodyDefault: UIFont {
            UIFont(name: "Gilroy-Medium", size: 16) ?? UIFont.systemFont(ofSize: 16)
        }
        static var bodySmall: UIFont {
            UIFont(name: "Gilroy-Medium", size: 13) ?? UIFont.systemFont(ofSize: 13)
        }
        static var bodyExtraSmall: UIFont {
            UIFont(name: "Gilroy-Medium", size: 12) ?? UIFont.systemFont(ofSize: 12)
        }
    }
    enum Image {
        static let launchBackground = "launchBackground"
        static let launchImage = "launchImage"
        static let launchTitle = "launchTitle"
        static let planet = "planet"
    }
    
    enum Text {
        static let origin = "Origin"
        static let info = "Info"
        static let episodes = "Episodes"
        static let characters = "Characters"
    }
}
