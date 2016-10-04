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
    
    var emoji=["😀 Smile","💂🏻 Dont Touch Me","👹 Devil","🤔 Thinking","💩 Choclate Icecream?","👽 Trump?","🤖 Robot","👎🏻 My Grade in Physics"]
    
    
    
    
    
    
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        coolTableView.dataSource=self
            // used to define the table
        coolTableView.delegate=self
            // ^ builds the data source within the code
        
        
        
        
        
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
      return emoji.count
        
        //^ counts the number of things in the array
        
    }
            // ^looks for somewhwere the number of rows( an integer)^
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        print(indexPath.row)
        
        let cell=UITableViewCell()
            //^ same as assigning a value
        
        cell.textLabel?.text=emoji[indexPath.row]
        
        return cell
    }
    
    //^ says in order what do you want in the cells
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

