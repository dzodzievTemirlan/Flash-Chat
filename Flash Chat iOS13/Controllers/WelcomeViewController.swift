//
//  WelcomeViewController.swift
//  Flash Chat iOS13
//
//  Created by Temirlan Dzodziev on 18.02.2020.
//  Copyright © 2020 Temirlan Dzodziev. All rights reserved.
//

import UIKit


class WelcomeViewController: UIViewController {
    
    @IBOutlet weak var titleLabel: UILabel!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.isNavigationBarHidden = true
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.isNavigationBarHidden = false
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        titleLabel.text = ""
        
        let titleText = K.appName
        var charIndex = 0.0
        
        for letter in titleText{
            
            Timer.scheduledTimer(withTimeInterval: 0.1 * charIndex , repeats: false) { (timer) in
                self.titleLabel.text?.append(letter)
            }
            charIndex += 1
        }
    }
    
    
}
