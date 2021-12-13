//
//  ViewController.swift
//  DemoGit
//
//  Created by Meenakshi Phadatare on 12/12/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var fruitsTableview: UITableView!
    
    let fruitsArray =  ["Apples","Bananas","mangoes","peaches","pinapple"]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        fruitsTableview.register(UITableViewCell.self, forCellReuseIdentifier: "Cell")
    }

}

extension ViewController : UITableViewDelegate,UITableViewDataSource {
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return fruitsArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for:indexPath)
        
        
        cell.textLabel?.text = fruitsArray[indexPath.row].uppercased()
        cell.textLabel?.textColor = UIColor.orange
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        
        print("row selected")
    }
    
    
}

