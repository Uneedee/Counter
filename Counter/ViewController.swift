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
        var sum = 0
        for i in 0...historyActions.count {
        sum += i
        }
        if sum > 8 {
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
        var data1 = currentDate()
        counterNumber = 0
        historyActions.append("\(data1): Зачение счетчика сброшено\n")
    }
    
    @IBAction func decreaseСounterValue(_ sender: Any) {
        var data1 = currentDate()
        if counterNumber > 0 {
            counterNumber -= 1 }
        historyActions.append("\(data1): Зачение счетчика изменено: -1\n")
    }
    
    @IBAction func addValueCounter(_ sender: Any) {
        counterNumber += 1
        var data1 = currentDate()
        historyActions.append("\(data1): Зачение счетчика изменено: +1\n")
    }
    
    private func currentDate() -> String {
        let dateNow = Date()
        var dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "HH:mm:ss"
        let dateCurrent = dateFormatter.string(from: dateNow)
        return dateCurrent
    }

    
}

