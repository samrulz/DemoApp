//
//  SecondViewController.swift
//  DemoApp
//
//  Created by samrulz on 16/03/18.
//  Copyright © 2018 sandip. All rights reserved.
//

import UIKit
protocol Information:class {
    func userDidEnterInfo(name:String,age:String)
}
class SecondViewController: UIViewController {

    weak var delegate:Information? = nil
    var names,ages:String?
    @IBAction func submit(_ sender: Any) {
        
//        names = nameTxt.text
//        ages = ageText.text
//        delegate?.userDidEnterInfo(name: names!, age: ages!)
//        self.navigationController?.popViewController(animated: true)

    }
    @IBOutlet weak var ageText: UITextField!
    @IBOutlet weak var nameTxt: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }


}
