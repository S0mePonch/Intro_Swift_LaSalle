//
//  ViewController.swift
//  Intro612
//
//  Created by ISSC_612_2023 on 24/02/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txt01: UILabel!
    @IBOutlet weak var btnPress: UIButton!
    
    @IBOutlet weak var txt02: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        txt01.text = "Nombre"
        btnPress.isEnabled = false
        txt02.isHidden = true
        
    }


}

