//
//  ViewController.swift
//  DemoApp
//
//  Created by samrulz on 16/03/18.
//  Copyright © 2018 sandip. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource,Information {
    func userDidEnterInfo(name: String, age: String) {
        nameArrayAll.append(name)
        ageArrayAll.append(age)
    }
    

    var nameArrayAll = [String]()
    var ageArrayAll = [String]()
    @IBAction func goToSecond(_ sender: Any) {
        let controller = storyboard?.instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController
        controller.delegate = self
        navigationController?.pushViewController(controller, animated: true)
        
    }
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        print("asdfghj========",nameArrayAll)
        tableView.rowHeight = UITableViewAutomaticDimension
        tableView.estimatedRowHeight = UITableViewAutomaticDimension
    
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        tableView.reloadData()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
     //   tableView.reloadData()
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableViewAutomaticDimension
    }
    

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
       
        if nameArrayAll.isEmpty{
            return 1
        }else{
            return self.nameArrayAll.count
        }
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! DemoList
        if nameArrayAll.isEmpty,ageArrayAll.isEmpty{
            return cell
        }
            cell.name.text = nameArrayAll[indexPath.row]
            cell.age.text = ageArrayAll[indexPath.row]
             return cell
       
       // cell.name.text = nameArrayAll[indexPath.row]
       // cell.age.text = ageArrayAll[indexPath.row]
       
    }


}

