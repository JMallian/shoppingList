//
//  OptionsViewController.swift
//  shoppingList
//
//  Created by Mallian, Jessica L on 10/24/17.
//  Copyright © 2017 Mallian, Jessica L. All rights reserved.
//

import UIKit

class OptionsViewController: UIViewController {
    let colorSchemeLabel: UILabel
    let option1Button: UIButton
    let option2Button: UIButton
    let option3Button: UIButton
    let option4Button: UIButton
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        colorSchemeLabel = UILabel()
        option1Button = UIButton()
        option2Button = UIButton()
        option3Button = UIButton()
        option4Button = UIButton()
        
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        
        //dimensions set here
        colorSchemeLabel.frame = CGRect(x: centerX - (buttonWidth/2), y: 30, width: buttonWidth, height: buttonHeight)
        option1Button.frame = CGRect(x: centerX - (buttonWidth/2), y: 140, width: buttonWidth, height: buttonHeight)
        option2Button.frame = CGRect(x: centerX - (buttonWidth/2), y: 225, width: buttonWidth, height: buttonHeight)
        option3Button.frame = CGRect(x: centerX - (buttonWidth/2), y: 310, width: buttonWidth, height: buttonHeight)
        option4Button.frame = CGRect(x: centerX - (buttonWidth/2), y: height-85, width: buttonWidth, height: buttonHeight)
        
        //Strings and font set here
        colorSchemeLabel.text = "Choose Color Scheme"
        colorSchemeLabel.textAlignment = NSTextAlignment.center
        colorSchemeLabel.font = colorSchemeLabel.font.withSize(30)
        option1Button.setTitle("Option1", for: .normal)
        option1Button.titleLabel?.font = buttonFont
        option2Button.setTitle("Option2", for: .normal)
        option2Button.titleLabel?.font = buttonFont
        option3Button.setTitle("Option3", for: .normal)
        option3Button.titleLabel?.font = buttonFont
        option4Button.setTitle("Back", for: .normal)
        option4Button.titleLabel?.font = buttonFont
        
        //add components to subview
        self.view.addSubview(colorSchemeLabel)
        self.view.addSubview(option1Button)
        self.view.addSubview(option2Button)
        self.view.addSubview(option3Button)
        self.view.addSubview(option4Button)
        
        //make buttons do things
        option1Button.addTarget(self, action: #selector(OptionsViewController.option1ButtonTapped), for: UIControlEvents.touchUpInside)
        option2Button.addTarget(self, action: #selector(OptionsViewController.option2ButtonTapped), for: UIControlEvents.touchUpInside)
        option3Button.addTarget(self, action: #selector(OptionsViewController.option3ButtonTapped), for: UIControlEvents.touchUpInside)
        option4Button.addTarget(self, action: #selector(OptionsViewController.goBackButtonTapped), for: UIControlEvents.touchUpInside)
        
        let appColors = AppColors()
        setColors(colors: appColors)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @objc func option1ButtonTapped() {
        let background = UIColor(red: 254/255, green: 251/255, blue: 216/255, alpha: 1)
        let text = UIColor(red: 97/255, green: 134/255, blue: 133/255, alpha: 1)
        let components = UIColor(red: 128/255, green: 206/255, blue: 214/255, alpha: 1)
        let splash = UIColor(red: 213/255, green: 244/255, blue: 230/255, alpha:1)
        let appColors = AppColors(background: background, text: text, component: components, splash: splash)
        setColors(colors: appColors)
    }
    
    @objc func option2ButtonTapped() {
        let background = UIColor(red: 98/255, green: 37/255, blue: 105/255, alpha: 1)
        let text = UIColor(red: 91/255, green: 154/255, blue: 160/255, alpha: 1)
        let components = UIColor(red: 214/255, green: 212/255, blue: 224/255, alpha: 1)
        let splash = UIColor(red: 184/255, green: 169/255, blue: 201/255, alpha:1)
        let appColors = AppColors(background: background, text: text, component: components, splash: splash)
        setColors(colors: appColors)
    }
    
    @objc func option3ButtonTapped() {
        let background = UIColor(red: 255/255, green: 238/255, blue: 173/255, alpha: 1)
        let text = UIColor(red: 255/255, green: 204/255, blue: 192/255, alpha: 1)
        let components = UIColor(red: 150/255, green: 206/255, blue: 180/255, alpha: 1)
        let splash = UIColor(red: 255/255, green: 111/255, blue: 105/255, alpha: 1)
        let appColors = AppColors(background: background, text: text, component: components, splash: splash)
        setColors(colors: appColors)
    }
    
    @objc func goBackButtonTapped() {
        //self.present(ViewController(), animated: true, completion: nil)
        //note: figure out how to make it look like it's coming back from the top
        self.dismiss(animated: true, completion: nil)
    }
    
    func setColors(colors: AppColors) {
        self.view.backgroundColor = colors.backgroundColor
        colorSchemeLabel.textColor = colors.splashColor
        colorSchemeLabel.backgroundColor = colors.componentBackgroundColor
        option1Button.backgroundColor = colors.componentBackgroundColor
        option2Button.backgroundColor = colors.componentBackgroundColor
        option3Button.backgroundColor = colors.componentBackgroundColor
        option4Button.backgroundColor = colors.componentBackgroundColor
        option1Button.setTitleColor(colors.textColor, for: .normal)
        option2Button.setTitleColor(colors.textColor, for: .normal)
        option3Button.setTitleColor(colors.textColor, for: .normal)
        option4Button.setTitleColor(colors.textColor, for: .normal)
    }
    



}
