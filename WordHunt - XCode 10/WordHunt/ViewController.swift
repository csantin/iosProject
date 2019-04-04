//
//  ViewController.swift
//  WordHunt
//
//  Created by Tech on 2019-03-14.
//  Copyright © 2019 Tech. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var instructions: UILabel!
    
    @IBAction func iShow(_ sender: UIButton) {
        if self.instructions.isHidden == true{
            self.instructions.isHidden = false
        }
        else if self.instructions.isHidden == false{
            self.instructions.isHidden = true
        }
    }
    
    
    @IBOutlet weak var oneTimer: UILabel!
    @IBOutlet weak var twoTimer: UILabel!
    @IBOutlet weak var threeTimer: UILabel!
    
    @IBOutlet weak var tableView: UITableView!
    var users: [String] = ["Hao", "Tam", "Quan", "Chris"]
    var scores: [String] = ["5:00", "6:00", "7:00", "8:00"]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return (users.count);
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: "cell")
        cell.textLabel?.text = users[indexPath.row] + "   -   " + scores[indexPath.row]
        return (cell)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
//        oneTimer.text = "One"
//        twoTimer.text = "Two"
//        threeTimer.text = "Three"
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

