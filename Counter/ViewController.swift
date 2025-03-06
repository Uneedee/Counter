//
//  ViewController.swift
//  Counter
//
//  Created by Alexey Ratushnyak on 05.03.2025.
//

import UIKit

final class ViewController: UIViewController {

   @IBOutlet weak var labelNumber: UILabel!
    
   private var counterNumber: Int = 0
    
   override func viewDidLoad() {
        super.viewDidLoad()
        }

   @IBAction func increaseCounter(_ sender: Any) {
        counterNumber += 1
        labelNumber.text = "Значение счетчика \(counterNumber)"
        
    }
    
}

