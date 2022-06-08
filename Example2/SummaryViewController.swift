//
//  SummaryViewController.swift
//  WorkoutProject
//
//  Created by riya singhal on 06/05/22.
//

import UIKit

class SummaryViewController: UIViewController, UITableViewDelegate , UITableViewDataSource           {
    
    
    
    
    let myData = ["Outdoor Run" , "Outdoor Walk Indoor WalkIndoor WalkIndoor WalkIndoor WalkIndoor Walk  Indoor Walk" ,"Indoor Walk","Outdoor Run", "Outdoor Walk" , "Outdoor Walk" , "Indoor Walk" , "Indoor Walk" ]
    
    
    
    let myKms = ["1.02KM","5.03KM" ,"1.01KM" , "5.01KM" , "5.71KM" ,               "2.78KM","2.79KM","3.36KM"]
    
    
    
    let myweekdays = ["Saturday", " Saturday", "Friday", " Friday"," Thrusday", "Wednesday"," Tuesday", " 25/04/22"]
    
    
    let myImage = ["1","2","3","4","5","6","7","8"]
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    @IBOutlet var tableview : UITableView!
    
    
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let nib = UINib(nibName: "CustomCell2", bundle: nil)
        tableview.register(nib, forCellReuseIdentifier: "CustomCell2")
        tableview.delegate = self
        tableview.dataSource = self
        
        
        
        
        
        

        
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myData.count
        
    }
    
    
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CustomCell2", for: indexPath) as! CustomCell2
        
        cell.myLabel.text = myData[indexPath.row]
        cell.myLabel1.text = myKms[indexPath.row]
        cell.myLabel2 .text = myweekdays[indexPath.row]
        cell.myImageview.image = UIImage(named: self.myImage[indexPath.row])
        
    
        
        return cell
    }
    

    
}
