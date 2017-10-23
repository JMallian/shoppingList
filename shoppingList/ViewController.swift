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
        
        appName.frame = CGRect(x: centerX - 100, y: centerY - 100, width: 200, height: 80)
        appName.text = appNameString
        appName.textAlignment = NSTextAlignment.center
        appName.textColor = UIColor.cyan
        appName.numberOfLines = 0

        
        self.view.addSubview(appName)
    
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

