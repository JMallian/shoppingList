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

    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        appName = UILabel()
        createNewButton = UIButton()
        selectListButton = UIButton()
        
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        
        let screenSize: CGSize = UIScreen.main.bounds.size
        let centerX: CGFloat = screenSize.width/2
        let centerY: CGFloat = screenSize.height/2
        
        appName.frame = CGRect(x: centerX - 100, y: centerY - 220, width: 200, height: 80)
        appName.text = appNameString
        appName.textAlignment = NSTextAlignment.center
        appName.textColor = UIColor.cyan
        appName.numberOfLines = 0 //this doesn't work how I think it does
        appName.font = appName.font.withSize(30)
        appName.backgroundColor = UIColor.purple
        
        createNewButton.frame = CGRect(x: centerX - 100, y: centerY - 40, width: 200, height: 80)
        createNewButton.setTitle("Create New List", for: .normal)
        createNewButton.backgroundColor = UIColor.cyan
        
        selectListButton.frame = CGRect(x: centerX - 100, y: centerY + 140, width: 200, height: 80)
        selectListButton.setTitle("Choose A List", for: .normal)
        selectListButton.backgroundColor = UIColor.cyan
        
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

