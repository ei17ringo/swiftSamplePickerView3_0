//
//  ViewController.swift
//  samplePickerView
//
//  Created by Eriko Ichinohe on 2016/01/28.
//  Copyright © 2016年 Eriko Ichinohe. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UIPickerViewDataSource,UIPickerViewDelegate {

    @IBOutlet weak var myPicker: UIPickerView!
    
    // データを配列で用意する
    var tea_list = ["ダージリン","アールグレイ","アッサム","オレンジペコ"]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        myPicker.dataSource = self
        myPicker.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // ピッカービューの列数
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    // ピッカービューの行数
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return tea_list.count
    }

    // ピッカービューに表示する文字
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return tea_list[row]
    }
    
    //  ピッカービューで選択された時に行う処理
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        print("選択されたのは\(row)行目で\(tea_list[row])です")
    }
}

