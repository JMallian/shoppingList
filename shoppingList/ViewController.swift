//
//  ViewController.swift
//  shoppingList
//
//  Created by Mallian, Jessica L on 10/22/17.
//  Copyright © 2017 Mallian, Jessica L. All rights reserved.
//

import UIKit

//color scheme taken from hexcolors
//color scheme
var backgroundColor: UIColor = UIColor(red: 254/255, green: 251/255, blue: 216/255, alpha: 1)
var splashColor: UIColor = UIColor(red: 213/255, green: 244/255, blue: 230/255, alpha:1)
var buttonBackground: UIColor = UIColor(red: 128/255, green: 206/255, blue: 214/255, alpha: 1)
var textColor: UIColor = UIColor(red: 97/255, green: 134/255, blue: 133/255, alpha: 1)

let buttonFont: UIFont = UIFont(name: "Times New Roman", size: 30)!

let screenSize: CGSize = UIScreen.main.bounds.size
let centerX: CGFloat = screenSize.width/2
let centerY: CGFloat = screenSize.height/2

let buttonWidth: CGFloat = 200
let buttonHeight: CGFloat = 80

class ViewController: UIViewController {
    let appNameString = "Shopping List"
    let appName: UILabel
    let createNewButton: UIButton
    let selectListButton: UIButton
    let optionsButton: UIButton


    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        appName = UILabel()
        createNewButton = UIButton()
        selectListButton = UIButton()
        optionsButton = UIButton()
        
        
        
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        
        
        appName.frame = CGRect(x: centerX - (buttonWidth/2), y: centerY - 310, width: buttonWidth, height: buttonHeight)
        createNewButton.frame = CGRect(x: centerX - (buttonWidth/2), y: centerY - 130, width: buttonWidth, height: buttonHeight)
        selectListButton.frame = CGRect(x: centerX - (buttonWidth/2), y: centerY + 50, width: buttonWidth, height: buttonHeight)
        optionsButton.frame = CGRect(x: centerX - (buttonWidth/2), y: centerY + 230, width: buttonWidth, height: buttonHeight)
        
        appName.text = appNameString
        appName.textAlignment = NSTextAlignment.center
        appName.numberOfLines = 0 //this doesn't work how I think it does
        appName.font = appName.font.withSize(30)
        
        createNewButton.setTitle("Create New List", for: .normal)
        createNewButton.titleLabel?.font = buttonFont
        
        selectListButton.setTitle("Choose A List", for: .normal)
        selectListButton.titleLabel?.font = buttonFont
        
        optionsButton.setTitle("Options", for: .normal)
        optionsButton.titleLabel?.font = buttonFont
        optionsButton.addTarget(self, action: #selector(ViewController.optionsButtonTapped), for: UIControlEvents.touchUpInside)
        
        
        
        //color stuff here
        self.view.backgroundColor = backgroundColor
        appName.textColor = splashColor
        appName.backgroundColor = buttonBackground
        createNewButton.backgroundColor = buttonBackground
        selectListButton.backgroundColor = buttonBackground
        optionsButton.backgroundColor = buttonBackground
        createNewButton.setTitleColor(textColor, for: .normal)
        selectListButton.setTitleColor(textColor, for: .normal)
        optionsButton.setTitleColor(textColor, for: .normal)
        
        self.view.addSubview(appName)
        self.view.addSubview(createNewButton)
        self.view.addSubview(selectListButton)
        self.view.addSubview(optionsButton)
    
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @objc func optionsButtonTapped() {
        self.present(OptionsViewController(), animated: true, completion: nil)
    }


}

