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


    var carModel = [String]()
    var carModelImage = [String]()


    let carCompanyName = [ "Tesla", "Lamborghini", "Porsche" ]

    let tesla = [ "Model S", "Model X" ]
    let telsaImageNames = [ "tesla-model-s.jpg", "tesla-model-x.jpg" ]

    let lamborghini = [ "aventador", "veneno", "huracan" ]
    let lamborghiniImageNames = [ "lamborghini-aventador.jpg", "lamborghini-veneno.jpg", "lamborghini-huracan.jpg" ]

    let porsche = [ "911", "boxter"]
    let porscheImageNames = [ "porsche-911.jpg", "porsche-boxter.jpg" ]


    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 2
    }

    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if component == 0 {
            return carCompanyName.count
        } else {
            return carModel.count
        }
    }

    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if component == 0 {
            return carCompanyName[row]
        } else {
            return carModel[row]
        }
    }

    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if component == 0 && row == 0 {
            carModel = tesla
            carModelImage = telsaImageNames
            pickerView.selectRow(0, inComponent: 1, animated: true)
        } else if component == 0 && row == 1 {
            carModel = lamborghini
            carModelImage = lamborghiniImageNames
            pickerView.selectRow(0, inComponent: 1, animated: true)
        } else if component == 0 && row == 2 {
            carModel = porsche
            carModelImage = porscheImageNames
            pickerView.selectRow(0, inComponent: 1, animated: true)
        }

        pickerView.reloadAllComponents()
        var imageNumber: Int = pickerView.selectedRow(inComponent: 1)
        imgView.image = UIImage(named: carModelImage[imageNumber])
    }


    override func viewDidLoad() {
        super.viewDidLoad()

        imgView.layer.cornerRadius = 50.0
        imgView.layer.masksToBounds = true

        carModel = tesla
        carModelImage = telsaImageNames
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
