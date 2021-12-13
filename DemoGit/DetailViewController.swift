//
//  DetailViewController.swift
//  DemoGit
//
//  Created by Meenakshi Phadatare on 12/12/21.
//

import UIKit

class DetailViewController: UIViewController {
    
   public var fruit : String! = ""

    @IBOutlet weak var txtPassword: UITextField!
    @IBOutlet weak var txtUsername: UITextField!
    @IBOutlet weak var lblFruits: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        lblFruits.text = fruit
      
    }
    
    @IBAction func LoginClicked(_ sender: UIButton) {
        
        if txtUsername.text == "abc" && txtPassword.text == "abc"{
            
            print("Login successfull")
            
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
