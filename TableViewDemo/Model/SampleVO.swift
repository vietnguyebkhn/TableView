//
//  SampleVO.swift
//  TableViewDemo
//
//  Created by Nguyễn Việt on 8/7/18.
//  Copyright © 2018 Nguyễn Việt. All rights reserved.
//

import Foundation

class SampleVO {
    var image = ""
    var title = ""
    var detail = ""
    
    init(data: [String: AnyObject]) {
        image = data["image"] as? String ?? ""
        title = data["title"] as? String ?? ""
        detail = data["detail"] as? String ?? ""
    }
}
