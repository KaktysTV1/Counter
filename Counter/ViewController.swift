//
//  ViewController.swift
//  Counter
//
//  Created by Андрей Чупрыненко on 12.06.2023.
//

import UIKit

class ViewController: UIViewController {
    var count: Int = 0
    var historyArray: [String] = ["История изменений:"]
    
    
    
    @IBOutlet weak var historyLable: UITextView!
    @IBOutlet weak var buttonMinus: UIButton!
    @IBOutlet weak var buttonPlus: UIButton!
    @IBOutlet weak var counter: UILabel!
    
    @IBOutlet weak var removeValue: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func buttonCountPlus(_ sender: Any) {
        count += 1
        counter.text = String(count)
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd-MM-YYYY hh:mm:ss"
        let dateString = dateFormatter.string(from: Date.init())
        historyArray.append("[\(dateString)]: значение изменено на +1")
        let textHistory = historyArray.joined(separator: "\n")
        historyLable.text = String( textHistory)
        print(count)
    }
    
    
    @IBAction func buttonCountMinus(_ sender: Any) {
        count -= 1
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd-MM-YYYY hh:mm:ss"
        let dateString = dateFormatter.string(from: Date.init())
        if count < 0 {
            count = 0
            historyArray.append("[\(dateString)]: попытка уменьшить значение счётчика ниже 0")
            let textHistory = historyArray.joined(separator: "\n")
            historyLable.text = String( textHistory)
        } else {
            historyArray.append("[\(dateString)]: значение изменено на -1")
            let textHistory = historyArray.joined(separator: "\n")
            historyLable.text = String( textHistory)
        }
        counter.text = String(count)
        print(count)
    }
    
    @IBAction func buttonRemoveValue(_ sender: Any) {
        count = 0
        counter.text = String(count)
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd-MM-YYYY hh:mm:ss"
        let dateString = dateFormatter.string(from: Date.init())
        historyArray.append("[\(dateString)]: значение сброшено")
        let textHistory = historyArray.joined(separator: "\n")
        historyLable.text = String( textHistory)
        print(count)
    }
    
    

//    @IBAction func buttonCount(_ sender: Any) {
//        count += 1
//        counter.text = String(count)
//        print(count)
//    }
}

