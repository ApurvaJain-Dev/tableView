//
//  ViewController.swift
//  table view
//
//  Created by Student-001 on 28/08/19.
//  Copyright © 2019 apurva. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {
    
    var friends = ["apurva","ankita","prajakta","namrata","pooja","anjali","nilam","asha"]
    var relatives = ["1","2","3","4","5","6"]
    
    
    
    @IBOutlet var firstImageView: UITableView!
    
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        
        let cellForward = storyboard?.instantiateViewController(withIdentifier: "NextViewController") as! NextViewController
        navigationController?.pushViewController(cellForward, animated: true)
        
    }
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        if section == 0 {
            return friends.count
        }
        else {
            return relatives.count
        }
    }
    //////////////
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
   
   //////////////////
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
       let cell = UITableViewCell(style: .subtitle, reuseIdentifier: "cell")
        cell.textLabel?.text = friends[indexPath.row]
        return cell
        
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

