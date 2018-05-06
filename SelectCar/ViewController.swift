//
//  ViewController.swift
//  SelectCar
//
//  Created by 사명구 on 2018. 5. 5..
//  Copyright © 2018 Quest4I. All rights reserved.
//

import UIKit


class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    @IBOutlet weak var imgView: UIImageView!


    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 2
    }

    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return 0
    }


    override func viewDidLoad() {
        super.viewDidLoad()
        imgView.layer.cornerRadius = 50.0
        imgView.layer.masksToBounds = true
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }



}
