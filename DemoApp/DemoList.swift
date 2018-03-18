//
//  DemoList.swift
//  DemoApp
//
//  Created by samrulz on 16/03/18.
//  Copyright © 2018 sandip. All rights reserved.
//

import UIKit

class DemoList: UITableViewCell {

   
    @IBOutlet weak var hjgk: UIImageView!
    
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var age: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
