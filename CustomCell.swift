//
//  CustomCell.swift
//  Design1
//
//  Created by riya singhal on 09/05/22.
//

import UIKit

class CustomCell: UITableViewCell {
    @IBOutlet var customView : UIView!
    @IBOutlet var myImageview : UIImageView!
    @IBOutlet var myLabel1 : UILabel!
    @IBOutlet var myLabel2 : UILabel!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        self.dropShadow()
        // Initialization code
    }
    
    func dropShadow(color: UIColor = UIColor.systemPink,



                            opacity: Float = 0.1,



                        offSet: CGSize = CGSize(width: 0.75, height: 1),



                            radius: CGFloat = 1,



                            scale: Bool = true) {



                customView.layer.masksToBounds = false



                customView.layer.shadowColor = color.cgColor



                customView.layer.shadowOpacity = opacity



                customView.layer.shadowOffset = offSet



                customView.layer.shadowRadius = radius
    
        
        
        
                customView.layer.shadowPath = UIBezierPath(roundedRect: self.bounds, cornerRadius: 16).cgPath



        //        customView.layer.shouldRasterize = true



        //        customView.layer.rasterizationScale = scale ? UIScreen.main.scale : 1



                customView.layer.cornerRadius = 16



                customView.layer.cornerRadius = 16



                }
        
        
        

    
}

    

   
