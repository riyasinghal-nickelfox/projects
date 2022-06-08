//
//  CustomCell.swift
//  ExamPrepProject
//
//  Created by riya singhal on 06/05/22.
//

import UIKit

class CustomCell1: UITableViewCell {
    
    
    @IBOutlet var myView : UIView!
    @IBOutlet  var myLabel : UILabel!
    @IBOutlet  var myLabel1 : UILabel!
    @IBOutlet  var myImageview : UIImageView!
    
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        self.myView.layer.cornerRadius = 12
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
