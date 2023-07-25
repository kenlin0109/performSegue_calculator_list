//
//  ViewController.swift
//  multiplePageAndCalculator
//
//  Created by 林秀謙 on 2023/7/18.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var retutnNumber: UILabel!
    var textForLabel = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        retutnNumber.text = textForLabel
        // Do any additional setup after loading the view.
    }
    
    
    
    @IBAction func buttonPress(_ sender: UIButton) {
        self.performSegue(withIdentifier: "showSecondPage", sender: self)
    }
    
    @IBAction func buttonPress2(_ sender: UIButton) {
        self.performSegue(withIdentifier: "showThirdPage", sender: self)
    }
    
    @IBAction func buttonPress3(_ sender: UIButton) {
        self.performSegue(withIdentifier: "showForthPage", sender: self)
    }
    
    
    
    
    
    
    @IBAction func unwindPage2Back(unwindSegue: UIStoryboardSegue) {
        print("unwindPage2Back")
        let p2  = unwindSegue.source as! page2ViewController
        retutnNumber.text = p2.LabelNumber.text
    }
    
    @IBAction func unwindPage3Back(unwindSegue: UIStoryboardSegue) {
        print("unwindPage3Back")
        //let p2  = unwindSegue.source as! page2ViewController
        //retutnNumber.text = p2.LabelNumber.text
    }
    
    @IBAction func unwindPage4Back(unwindSegue: UIStoryboardSegue) {
        print("unwindPage4Back")
        //let p2  = unwindSegue.source as! page2ViewController
       // retutnNumber.text = p2.LabelNumber.text
    }
    
}

