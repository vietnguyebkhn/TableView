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
   
    var arrData : [SampleVO] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        //register cell for table
        mTableView.register(UINib(nibName: "CustomTableViewCell", bundle: nil), forCellReuseIdentifier: "CustomTableViewCell")
        mTableView.rowHeight = 100
        loadDataLocal()
    }

    func loadDataLocal() {
        if let path = Bundle.main.path(forResource: "data", ofType: "json")
        {
            do {
                let data = try Data(contentsOf: URL(fileURLWithPath: path), options: .mappedIfSafe)
                let jsonResult = try JSONSerialization.jsonObject(with: data, options: .mutableLeaves)
                if let jsonResult = jsonResult as? Dictionary<String, AnyObject>, let listData = jsonResult["data"] as? [Any] {
                    for item in listData {
                       let i = SampleVO(data: item as! [String : AnyObject])
                            arrData.append(i)
                    }
                   
                    mTableView.reloadData()
                }
            } catch {
                // handle error
            }
        }
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
        return arrData.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CustomTableViewCell", for: indexPath) as! CustomTableViewCell
        cell.setdata(data: arrData[indexPath.row])
        
        return cell
    }

}

