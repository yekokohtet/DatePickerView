//
//  ViewController.swift
//  DatePickerView
//
//  Created by Ye Ko Ko Htet on 27/07/2019.
//  Copyright © 2019 Ye Ko Ko Htet. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tfDOB: UITextField!
    
    private var datePicker: UIDatePicker?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        datePicker = UIDatePicker()
        datePicker?.datePickerMode = .date
        datePicker?.addTarget(self, action: #selector(self.selectDate(datePicker:)), for: .valueChanged)
        
        tfDOB.inputView = datePicker
    }
    
    @objc func selectDate(datePicker: UIDatePicker) {
        let formatter = DateFormatter()
        formatter.dateFormat = "dd/MM/yyyy"
        tfDOB.text = formatter.string(from: datePicker.date)
        view.endEditing(true)
    }


}

