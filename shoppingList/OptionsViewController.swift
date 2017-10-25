//
//  OptionsViewController.swift
//  shoppingList
//
//  Created by Mallian, Jessica L on 10/24/17.
//  Copyright © 2017 Mallian, Jessica L. All rights reserved.
//

import UIKit

class OptionsViewController: UIViewController {
    let option1Button: UIButton
    let option2Button: UIButton
    let option3Button: UIButton
    let option4Button: UIButton
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        option1Button = UIButton()
        option2Button = UIButton()
        option3Button = UIButton()
        option4Button = UIButton()
        
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        
        //button dimensions set here
        option1Button.frame = CGRect(x: centerX - (buttonWidth/2), y: centerY - 310, width: buttonWidth, height: buttonHeight)
        option2Button.frame = CGRect(x: centerX - (buttonWidth/2), y: centerY - 130, width: buttonWidth, height: buttonHeight)
        option3Button.frame = CGRect(x: centerX - (buttonWidth/2), y: centerY + 50, width: buttonWidth, height: buttonHeight)
        option4Button.frame = CGRect(x: centerX - (buttonWidth/2), y: centerY + 230, width: buttonWidth, height: buttonHeight)
        
        //button String and font set here
        option1Button.setTitle("Option1", for: .normal)
        option1Button.titleLabel?.font = buttonFont
        option2Button.setTitle("Option2", for: .normal)
        option2Button.titleLabel?.font = buttonFont
        option3Button.setTitle("Option3", for: .normal)
        option3Button.titleLabel?.font = buttonFont
        option4Button.setTitle("Back", for: .normal)
        option4Button.titleLabel?.font = buttonFont
        
        //add buttons to subview
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
        
    }
    
    @objc func goBackButtonTapped() {
        self.present(ViewController(), animated: true, completion: nil)
        //note: figure out how to make it look like it's coming back from the top
    }
    
    func setColors(colors: AppColors) {
        self.view.backgroundColor = colors.backgroundColor
        option1Button.backgroundColor = colors.componentBackgroundColor
        option2Button.backgroundColor = colors.componentBackgroundColor
        option3Button.backgroundColor = colors.componentBackgroundColor
        option4Button.backgroundColor = colors.componentBackgroundColor
        option1Button.setTitleColor(colors.textColor, for: .normal)
        option2Button.setTitleColor(colors.textColor, for: .normal)
        option3Button.setTitleColor(colors.textColor, for: .normal)
        option4Button.setTitleColor(colors.textColor, for: .normal)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
