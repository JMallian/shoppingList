//
//  AppColors.swift
//  shoppingList
//
//  Created by Mallian, Jessica L on 10/25/17.
//  Copyright © 2017 Mallian, Jessica L. All rights reserved.
//

import Foundation
import UIKit

struct AppColors {
    var backgroundColor: UIColor
    var textColor: UIColor
    var componentBackgroundColor: UIColor
    var splashColor: UIColor
    
    init() {
        backgroundColor = UIColor(red: 254/255, green: 251/255, blue: 216/255, alpha: 1)
        textColor = UIColor(red: 97/255, green: 134/255, blue: 133/255, alpha: 1)
        componentBackgroundColor = UIColor(red: 128/255, green: 206/255, blue: 214/255, alpha: 1)
        splashColor = UIColor(red: 213/255, green: 244/255, blue: 230/255, alpha:1)
    }
    
    init(background: UIColor, text: UIColor, component: UIColor, splash: UIColor) {
        backgroundColor = background
        textColor = text
        componentBackgroundColor = component
        splashColor = splash
    }
    
    mutating func setBackgroundColor(color: UIColor) {
        backgroundColor = color
    }
}


