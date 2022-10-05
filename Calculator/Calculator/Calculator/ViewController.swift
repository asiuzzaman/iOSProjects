//
//  ViewController.swift
//  Calculator
//
//  Created by Md. Asiuzzaman on 5/10/22.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var workingSpace: UILabel!
    @IBOutlet weak var result: UILabel!
    
    var working: String = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        clearAll()
    }
    
    func clearAll() -> Void {
        working = ""
        workingSpace.text = ""
        result.text = ""
    }
    
    @IBAction func allClearTap(_ sender: Any) {
        clearAll()
    }
    
    @IBAction func backTap(_ sender: Any) {
    }
    
    @IBAction func percentTap(_ sender: Any) {
    }
    
    @IBAction func divideTap(_ sender: Any) {
    }
    @IBAction func multiplyTap(_ sender: Any) {
    }
    @IBAction func minusTap(_ sender: Any) {
    }
    @IBAction func plusTap(_ sender: Any) {
    }
    @IBAction func equalTap(_ sender: Any) {
    }
    
    @IBAction func oneTap(_ sender: Any) {
    }
    
    @IBAction func twoTap(_ sender: Any) {
    }
    
    @IBAction func threeTap(_ sender: Any) {
    }
    @IBAction func fourTap(_ sender: Any) {
    }
    @IBAction func fiveTap(_ sender: Any) {
    }
    @IBAction func sixTap(_ sender: Any) {
    }
    @IBAction func sevenTap(_ sender: Any) {
    }
    @IBAction func eightTap(_ sender: Any) {
    }
    @IBAction func nineTap(_ sender: Any) {
    }


}

