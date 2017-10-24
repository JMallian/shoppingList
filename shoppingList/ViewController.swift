//
//  ViewController.swift
//  shoppingList
//
//  Created by Mallian, Jessica L on 10/22/17.
//  Copyright © 2017 Mallian, Jessica L. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let appNameString = "Shopping List"
    let appName: UILabel
    let createNewButton: UIButton
    let selectListButton: UIButton
    
    //color scheme
    let paleYellow: UIColor
    let lightBlue: UIColor
    let darkBlue: UIColor
    let darkGreen: UIColor
    
    let buttonFont: UIFont

    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        appName = UILabel()
        createNewButton = UIButton()
        selectListButton = UIButton()
        
        //color scheme taken from hexcolors
        lightBlue = UIColor(red: 213/255, green: 244/255, blue: 230/255, alpha:1)
        darkBlue = UIColor(red: 128/255, green: 206/255, blue: 214/255, alpha: 1)
        paleYellow = UIColor(red: 254/255, green: 251/255, blue: 216/255, alpha: 1)
        darkGreen = UIColor(red: 97/255, green: 134/255, blue: 133/255, alpha: 1)
        
        buttonFont = UIFont(name: "Times New Roman", size: 30)!
        
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        
        let screenSize: CGSize = UIScreen.main.bounds.size
        let centerX: CGFloat = screenSize.width/2
        let centerY: CGFloat = screenSize.height/2
        
        
        appName.frame = CGRect(x: centerX - 100, y: centerY - 220, width: 200, height: 80)
        appName.text = appNameString
        appName.textAlignment = NSTextAlignment.center
        appName.numberOfLines = 0 //this doesn't work how I think it does
        appName.font = appName.font.withSize(30)
        
        createNewButton.frame = CGRect(x: centerX - 100, y: centerY - 40, width: 200, height: 80)
        createNewButton.setTitle("Create New List", for: .normal)
        createNewButton.titleLabel?.font = buttonFont
        
        selectListButton.frame = CGRect(x: centerX - 100, y: centerY + 140, width: 200, height: 80)
        selectListButton.setTitle("Choose A List", for: .normal)
        selectListButton.titleLabel?.font = buttonFont
        
        //color stuff here
        self.view.backgroundColor = paleYellow
        appName.textColor = lightBlue
        appName.backgroundColor = darkBlue
        createNewButton.backgroundColor = darkBlue
        selectListButton.backgroundColor = darkBlue
        createNewButton.setTitleColor(darkGreen, for: .normal)
        selectListButton.setTitleColor(darkGreen, for: .normal)
        
        self.view.addSubview(appName)
        self.view.addSubview(createNewButton)
        self.view.addSubview(selectListButton)
    
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


}

