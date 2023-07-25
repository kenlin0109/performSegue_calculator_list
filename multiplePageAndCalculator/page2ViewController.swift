//
//  page2ViewController.swift
//  multiplePageAndCalculator
//
//  Created by 林秀謙 on 2023/7/18.
//

import UIKit

class page2ViewController: UIViewController {
    var currentNumber = ""
    var preNumber = ""
    var strOperator = ""
    var dataPassed = ""
    
    @IBOutlet weak var LabelNumber: UILabel!

    override func viewDidLoad() { //預先載入並初始化
        super.viewDidLoad()
        LabelNumber.text = ""
        
        // Do any additional setup after loading the view.
    }
    
    func afterOperatorClick() {
        if strOperator == "" {
            preNumber = LabelNumber.text ?? ""
            LabelNumber.text = ""
        }
    }
    
    
    
    @IBAction func Digit(_ sender: UIButton) {
        
        let currentNumber = LabelNumber?.text ?? ""
        let digit = sender.titleLabel?.text ?? ""
        
        if currentNumber == "0" {
            LabelNumber.text = digit
        } else {
            LabelNumber.text = currentNumber + digit
        }
    }
    
    @IBAction func ACplusMinusAndPercentAndDot(_ sender: UIButton) {
        
        let mark = sender.titleLabel?.text ?? ""
        
        if mark == "AC" {
            LabelNumber.text = ""
            
        }else if mark == "±"{
            if LabelNumber.text == "" {
                return
            }
            let number = LabelNumber.text ?? ""
            if number.prefix(1) != "-" {
                LabelNumber.text = "-" + number
            } else {
                let worldIndex = number.index(number.startIndex, offsetBy: 1)
                LabelNumber.text = String(number.suffix(from: worldIndex))
            }
            
        }else if mark == "%"{
            
            if let nNumber = LabelNumber.text {
                let nFloat = (Float(nNumber) ?? 0) * 0.01
                LabelNumber.text = String(format: "%g", nFloat)
                
            }
            
        }else if mark == "."{
            if LabelNumber.text == "" || LabelNumber.text?.ranges(of: ".").count == 0 {
                LabelNumber.text = (LabelNumber?.text ?? "") + "."
            }
        }
            
            
       
    }
    
    @IBAction func Arthmetic(_ sender: UIButton) {
        afterOperatorClick()
        strOperator = sender.titleLabel?.text ?? ""
    }
    
    func Operate(_ strOperate: String, _ pn: Float, _ cn: Float) -> Float {
        var tn: Float = 0
        
        if strOperate == "+" {
            tn = pn + cn
        } else if strOperate == "-" {
            tn = pn - cn
        } else if (strOperate == "*") || (strOperate == "×") {
            tn = pn * cn
        } else if strOperate == "÷" {
            tn = pn / cn
        }
        
        return tn
    }
    
    
    
    fileprivate func CaculatorOperate() {
        let ntext = LabelNumber?.text ?? ""
        let cn = Float(ntext) ?? 0
        let ptext = preNumber
        let pn = Float(ptext) ?? 0
                
        let tn = Operate(strOperator, pn, cn)
                
        LabelNumber.text = String(format:"%g", tn)
        preNumber = ""
        strOperator = ""
         
    }
    
    @IBAction func Equals(_ sender: UIButton) {
        if LabelNumber.text == "" {
            return
        }
        CaculatorOperate()
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
