//
//  AddTaskViewController.swift
//  ToDoList
//
//  Created by huangluyang on 15/3/10.
//  Copyright (c) 2015年 HLY. All rights reserved.
//

import UIKit

class AddTaskViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

//        self.tableView.registerClass(SimpleInputCell.self, forCellReuseIdentifier: "simpleInputCell")
        self.tableView.registerNib(UINib(nibName: "SimpleInputCell", bundle: nil), forCellReuseIdentifier: "simpleInputCell")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    // MARK: - table
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell: UITableViewCell?
        if indexPath.row <= 1 {
            cell = tableView.dequeueReusableCellWithIdentifier("simpleInputCell", forIndexPath: indexPath) as? UITableViewCell
            (cell as SimpleInputCell).textField.placeholder = "我想..."
            (cell as SimpleInputCell).textField.text = "今天今天今天"
        } else {
            cell = tableView.dequeueReusableCellWithIdentifier("cell") as? UITableViewCell
            if cell == nil {
                cell = UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: "cell")
            }
        }
        
        return cell!
    }
}
