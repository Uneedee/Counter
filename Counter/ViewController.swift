//
//  ViewController.swift
//  Counter
//
//  Created by Alexey Ratushnyak on 05.03.2025.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }

    
    
    
    
    @IBOutlet weak var labelNumber: UILabel!
    
    private var number: Int = 0
    
    @IBAction func buttonPlus(_ sender: Any) {
        number += 1
        labelNumber.text = "Значение счетчика \(number)"
        
    }
    
}

