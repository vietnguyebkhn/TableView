//
//  ViewController.swift
//  TableViewDemo
//
//  Created by Nguyễn Việt on 8/7/18.
//  Copyright © 2018 Nguyễn Việt. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITabBarDelegate {
    @IBOutlet weak var mTableView: UITableView!
    var arrImages = ["A", "B", "C"]
    var arrTitle = ["Chu","Chu","Chu"]
    var arrDetail = ["Chu A","Chu B","Chu C"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        //register cell for table
        mTableView.register(UINib(nibName: "CustomTableViewCell", bundle: nil), forCellReuseIdentifier: "CustomTableViewCell")
        mTableView.rowHeight = 100
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

//    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
//        return 50
//    }
    
    
    
    //MARK: UITableViewDataSource
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrImages.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CustomTableViewCell", for: indexPath) as! CustomTableViewCell
        cell.setdata(title: arrTitle[indexPath.row], detail: arrDetail[indexPath.row], image: arrImages[indexPath.row])
        
        return cell
    }

}

