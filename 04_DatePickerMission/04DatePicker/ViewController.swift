//
//  ViewController.swift
//  04DatePicker
//
//  Created by Ki-su Kim on 7/4/20.
//  Copyright © 2020 Ki-su Kim. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let timeSelector: Selector = #selector(ViewController.updateTime)
    let interval = 1.0
    var count = 0
    var alarmTime: String = ""
    var isAlarmRed: Bool = false
    
    @IBOutlet var lblCurrentTime: UILabel!
    @IBOutlet var lblPickerTime: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        Timer.scheduledTimer(timeInterval: interval, target: self, selector: timeSelector, userInfo: nil, repeats: true)
    }

    @IBAction func changeDatePicker(_ sender: UIDatePicker) {
        let datePickerView = sender
        let formatter = DateFormatter()
        
        formatter.dateFormat = "yyyy-MM-dd HH:mm EEE"
        lblPickerTime.text = "선택시간 : " + formatter.string(from: datePickerView.date)
        
        formatter.dateFormat = "HH:mm"
        alarmTime = formatter.string(from: datePickerView.date)
    }
    
    @objc func updateTime() {
//        lblCurrentTime.text = String(count)
//        count += 1
        
        let date = NSDate()
        let formatter = DateFormatter()
        
        formatter.dateFormat = "yyyy-MM-dd HH:mm EEE"
        lblCurrentTime.text = "현재시간 : " + formatter.string(from: date as Date)
        
        formatter.dateFormat = "HH:mm"
        if formatter.string(from: date as Date) == alarmTime {
            view.backgroundColor = UIColor.red
            isAlarmRed = true
        } else if isAlarmRed {
            view.backgroundColor = UIColor.white
            isAlarmRed = false
        }
    }
}

