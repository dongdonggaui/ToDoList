//
//  SimpleInputCell.swift
//  ToDoList
//
//  Created by huangluyang on 15/3/12.
//  Copyright (c) 2015年 HLY. All rights reserved.
//

import UIKit

class SimpleInputCell: UITableViewCell {

    @IBOutlet weak var textField: UITextField!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    // MARK: - setters & getters
    
}
