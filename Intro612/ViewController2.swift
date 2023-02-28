//
//  ViewController2.swift
//  Intro612
//
//  Created by ISSC_612_2023 on 24/02/23.
//

import UIKit

class ViewController2: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    

    @IBAction func btnOnClick(_ sender: UIButton) {
        
        print(sender.currentTitle ?? "")
    }
}
