//
//  ViewController.swift
//  micrale-pills
//
//  Created by admin on 3/31/17.
//  Copyright © 2017 duongmh3. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    let cites = ["HCM", "Ha Noi", "Hai Phong", "Ben Tre"]
    @IBOutlet weak var btChooseCity: UIButton!
    @IBOutlet weak var pickerCities: UIPickerView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        pickerCities.dataSource = self
        pickerCities.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func btChooseCityClick(_ sender: Any) {
        pickerCities.isHidden = false
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return cites[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        btChooseCity.setTitle(cites[row], for: UIControlState())
        pickerCities.isHidden = true
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return cites.count
    }
}

