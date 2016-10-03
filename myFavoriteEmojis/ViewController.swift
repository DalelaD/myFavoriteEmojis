//
//  ViewController.swift
//  myFavoriteEmojis
//
//  Created by BHSRam3 on 9/30/16.
//  Copyright © 2016 BHSRam3. All rights reserved.
//
// need to tell tables number of rows and content in those rows, will give an error until it is completely built

import UIKit

class ViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {
    
    
    @IBOutlet weak var coolTableView: UITableView!
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        coolTableView.dataSource=self
            // used to define the table
        coolTableView.delegate=self
            // and contents
        
        
        
        
        
        
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
      return 100
        
    }
            // ^looks for somewhwere the number of rows( an integer)^
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell=UITableViewCell()
            //^ same as assigning a value
        
        cell.textLabel?.text=" 💩 hello"
        
        return cell
    }
    
    //^ says in order what do you want in the cells
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

