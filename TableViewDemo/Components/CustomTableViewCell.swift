//
//  CustomTableViewCell.swift
//  TableViewDemo
//
//  Created by Nguyễn Việt on 8/7/18.
//  Copyright © 2018 Nguyễn Việt. All rights reserved.
//

import UIKit

class CustomTableViewCell: UITableViewCell {
    @IBOutlet weak var mImage: UIImageView!
    @IBOutlet weak var mTitleLabel: UILabel!
    @IBOutlet weak var mDetailLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    func setdata(data: SampleVO) {
        mImage.image = UIImage(named: data.image)
        mTitleLabel.text = data.title
        mDetailLabel.text = data.detail
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
