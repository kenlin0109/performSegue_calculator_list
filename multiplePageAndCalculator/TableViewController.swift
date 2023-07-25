//
//  TableViewController.swift
//  multiplePageAndCalculator
//
//  Created by 林秀謙 on 2023/7/20.
//

import UIKit

class TableViewController: UITableViewController {

    let fruitsImageName: [String] = ["Apple", "Banana", "Cherry"]
    let fruitsName: [String] = ["Apple", "Banana", "Cherry"]
    let fruitsPrice: [Int] = [10, 20, 30]
    let fruitsDesc: [String] = ["蘋果樹是薔薇科蘋果亞科蘋果屬植物，為落葉喬木，在世界上廣泛種植。蘋果，又稱柰或林檎，是蘋果樹的果實，一般呈紅色，但需視品種而定，富含礦物質和維生素，是人們最常食用的水果之一。人們根據需求的不同口感、用途培育不同的品種，已知有超過7,500個蘋果品種，擁有一系列人們需要的不同特性。", "香蕉，又名甘蕉、芎蕉、芽蕉，弓蕉，為芭蕉科芭蕉屬小果野蕉及野蕉的自然或人工雜交的栽培種，為多年生草本植物。果實長有棱；果皮黃色或綠色，果肉白色，味道香甜。主要生長於熱帶、亞熱帶地區。原產於亞洲東南部熱帶、亞熱帶地區。佤語稱為「muah nbaex」。", "櫻桃是某些李屬喬木或灌木及其果實的統稱。歐洲甜櫻桃和歐洲酸櫻桃是兩種較為常見的食用櫻桃，二者統稱車厘子，由於歐洲酸櫻桃不是鮮食水果，水果市場上的車厘子為歐洲甜櫻桃。"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return self.fruitsImageName.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // #warning Incomplete implementation, return the number of rows
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        
        cell.imageView?.image = UIImage(named: self.fruitsImageName[indexPath.row])
        cell.textLabel?.text = self.fruitsName[indexPath.row]
        cell.detailTextLabel?.text = String(self.fruitsPrice[indexPath.row])
        
        return cell
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showDetail" {
            let detailViewController: DetailViewController = segue.destination as! DetailViewController
            detailViewController.fruitsDesc = self.fruitsDesc[(tableView.indexPathForSelectedRow?.row)!]
        }
    }
    /*
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...

        return cell
    }
    */

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
