//
//  ViewController.swift
//  Counter
//
//  Created by Андрей Чупрыненко on 12.06.2023.
//

import UIKit

class ViewController: UIViewController {
    var count: Int = 0
    
    
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
        print(count)
    }
    
    
    @IBAction func buttonCountMinus(_ sender: Any) {
        count -= 1
        if count <= 0 {
            count = 0
        }
        counter.text = String(count)
        print(count)
    }
    
    @IBAction func buttonRemoveValue(_ sender: Any) {
        count = 0
        counter.text = String(count)
    }
    
    

//    @IBAction func buttonCount(_ sender: Any) {
//        count += 1
//        counter.text = String(count)
//        print(count)
//    }
}

