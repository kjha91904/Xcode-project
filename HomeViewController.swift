//
//  HomeViewController.swift
//  ecommerce
//
//  Created by Krishna on 22/02/24.
//

import UIKit

class HomeViewController: UIViewController, UITableViewDelegate,UITableViewDataSource{
    let list = [ "Home", "Offerzone", "Coupons", "Whatsnew","Games ", "Plus zone"]
    var myindex = 0
    
    @IBOutlet weak var table: UITableView!
    
   
    

    override func viewDidLoad() {
        super.viewDidLoad()
        table.isHidden = true

        // Do any additional setup after loading the view.
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return list.count
        
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = table.dequeueReusableCell(withIdentifier: "cell")
        cell?.textLabel?.text = list [indexPath.row]
        return cell!
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        myindex = indexPath.row //selecting the index and sending it to my index
        switch myindex {
            
            
            
        case 0:
            let VC = self.storyboard?.instantiateViewController(identifier: "HomeViewController") as! HomeViewController
            self.navigationController?.pushViewController(VC, animated: false)
            
            
            
            
            
        case 1:
            let VC = self.storyboard?.instantiateViewController(identifier: "Offerzone") as! Offerzone
            self.navigationController?.pushViewController(VC, animated: true)
        case 2:
            let VC = self.storyboard?.instantiateViewController(identifier: "Coupons") as! Coupons
            self.navigationController?.pushViewController(VC, animated: true)
        case 3:
            let VC = self.storyboard?.instantiateViewController(identifier: "Whatsnew") as! Whatsnew
            self.navigationController?.pushViewController(VC, animated: true)
        case 4:
            let VC = self.storyboard?.instantiateViewController(identifier: "Games") as! Games
            self.navigationController?.pushViewController(VC, animated: true)
        case 5:
            let VC = self.storyboard?.instantiateViewController(identifier: "Pluszone") as! Pluszone
            self.navigationController?.pushViewController(VC, animated: true)
            
        default:
            print("error")
        }
    }
    @IBAction func info(_ sender: UIButton) {
        if (table.isHidden == true) {
            table.isHidden = false
        }
        else
        {
            table.isHidden = true
        }
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
