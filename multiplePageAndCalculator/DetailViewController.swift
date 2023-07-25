//
//  DetailViewController.swift
//  multiplePageAndCalculator
//
//  Created by 林秀謙 on 2023/7/25.
//

import UIKit

class DetailViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        desc.text = self.fruitsDesc
        // Do any additional setup after loading the view.
    }
    var fruitsDesc: String!
    @IBOutlet weak var desc: UILabel!
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
