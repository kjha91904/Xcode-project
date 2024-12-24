//
//  loginViewController.swift
//  ecommerce
//
//  Created by Krishna on 22/02/24.
//

import UIKit

class loginViewController: UIViewController {

    var Name = "krishna"
    
    var Pass = "3691"
    
    @IBOutlet weak var username: UITextField!
    
    @IBOutlet weak var password: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func login(_ sender: UIButton) {
        if username.text == Name {
            if password.text == Pass {
                let vc =
                self.storyboard?.instantiateViewController(withIdentifier:"HomeViewController") as! HomeViewController
                self.navigationController?.pushViewController(vc, animated: true)
            }
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
