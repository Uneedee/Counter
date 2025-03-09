//
//  ViewController.swift
//  Counter
//
//  Created by Alexey Ratushnyak on 05.03.2025.
//

import UIKit

final class ViewController: UIViewController {

   @IBOutlet weak var labelNumber: UILabel!
    
    
    @IBOutlet weak var historyValue: UITextView!
    
    
    var historyActions: [String] = [] { didSet {
        updateHistoryTextView()
        if historyActions.count > 15 {
            historyActions.removeFirst()
        }
    }}
    
  
    
    
    
    private func updateHistoryTextView() {
        let historyText = historyActions.joined(separator: " ")
        historyValue.text = historyText
    }
    
    
    
    private var counterNumber: Int = 0 { didSet {
        labelNumber.text = "Значение счетчика: \(counterNumber)"
    } }
    
    
   override func viewDidLoad() {
        super.viewDidLoad()
        }
    
    @IBAction func resetCounterValue(_ sender: Any) {
        let data1 = currentDate()
        counterNumber = 0
        historyActions.append("\(data1): Зачение счетчика сброшено\n")
    }
    
    @IBAction func decreaseСounterValue(_ sender: Any) {
       let data1 = currentDate()
        if counterNumber > 0 {
            counterNumber -= 1 }
        historyActions.append("\(data1): Зачение счетчика изменено: -1\n")
    }
    
    @IBAction func addValueCounter(_ sender: Any) {
        counterNumber += 1
        let data1 = currentDate()
        historyActions.append("\(data1): Зачение счетчика изменено: +1\n")
    }
    
    private func currentDate() -> String {
        let dateNow = Date()
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "HH:mm:ss"
        let dateCurrent = dateFormatter.string(from: dateNow)
        return dateCurrent
    }

    
}

