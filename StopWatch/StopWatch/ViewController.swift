//
//  ViewController.swift
//  StopWatch
//
//  Created by Md. Asiuzzaman on 9/9/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var resetButton: UIButton!
    @IBOutlet weak var startButton: UIButton!
    @IBOutlet weak var timerLabel: UILabel!
    
    var timer: Timer = Timer()
    var count: Int = 0
    var timerCounting: Bool = false
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        startButton.setTitleColor(UIColor.green, for: .normal)
    }
    
    @IBAction func startTapped(_ sender: Any) {
        
        if timerCounting {
            timerCounting = false
            timer.invalidate()
            startButton.setTitle("START", for: .normal)
            startButton.setTitleColor(UIColor.green, for: .normal)
        }
        else {
            timerCounting = true
            startButton.setTitle("STOP", for: .normal)
            startButton.setTitleColor(UIColor.red, for: .normal)
            timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(timerCounter), userInfo: nil, repeats: true)
        }
    }
    
    @objc func timerCounter() -> Void {
        count = count + 1
        let time = secondsToHoursMinutesSeconds(seconds: count)
        let makeTimeString = makeTimeString(hours: time.0, minutes: time.1, seconds: time.2)
        timerLabel.text = makeTimeString
    }
    func secondsToHoursMinutesSeconds(seconds : Int ) -> (Int, Int, Int) {
        return ((seconds / 3600), ((seconds % 3600) / 60),((seconds % 3600) % 60))
    }
    func makeTimeString(hours: Int, minutes: Int, seconds: Int ) -> String {
        var timeString = ""
        
        timeString += String(format: "%02d", hours)
        timeString += " : "
        timeString += String(format: "%02d", minutes)
        timeString += " : "
        timeString += String(format: "%02d", seconds)
        
        return timeString
    }
    
    @IBAction func resetTapped(_ sender: Any) {
        let alert = UIAlertController(title: "Reset Timer?", message: "Are you sure want to reset Timer?", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "CANCLE", style: .cancel, handler: { (_) in
            
        }))
        alert.addAction(UIAlertAction(title: "YES", style: .default, handler: { (_) in
            self.count = 0
            self.timer.invalidate()
            self.timerLabel.text = self.makeTimeString(hours: 0, minutes: 0, seconds: 0)
            
            self.startButton.setTitle("START", for: .normal)
            self.startButton.setTitleColor(UIColor.green, for: .normal)
            
        }))
        self.present(alert, animated: true, completion: nil)
    }
    
}

