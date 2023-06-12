//
//  ViewController.swift
//  Counter
//
//  Created by Андрей Чупрыненко on 12.06.2023.
//

import UIKit

class ViewController: UIViewController {
    var count: Int = 0
    @IBOutlet weak var counter: UILabel!
    @IBOutlet weak var countButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func buttonCount(_ sender: Any) {
        count += 1
        counter.text = String(count)
        print(count)
    }
}

