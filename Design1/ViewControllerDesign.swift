//
//  ViewController.swift
//  Design1
//
//  Created by riya singhal on 09/05/22.
//

import UIKit

class ViewControllerDesign: UIViewController,UITableViewDelegate,UITableViewDataSource {
    let myLabel1 = ["My Bingo Challenges", "My Quizzes",  "Saved" , "My Affirmations " ,"My Saved Rituals"]
    let images = [ "1.","2.","3.","4.","5."]
    let myLabel2 = ["4 Participated","1 Completed","2 Posts and Posts" , " 7 Completed" , "0 Rituals"]
    
    
    
    
    
    
    @IBOutlet var tableView : UITableView!
    
    
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        
        let nib = UINib(nibName: "CustomCell", bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: "CustomCell")
        tableView.delegate = self
        tableView.dataSource = self
        
        
        
        
        // Do any additional setup after loading the view.
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myLabel1.count
    }
    
    
    
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CustomCell", for: indexPath) as! CustomCell
        cell.myLabel1.text =  myLabel1[indexPath.row]
        cell.myLabel2.text = myLabel2[indexPath.row]
        cell.myImageview.image = UIImage(named: self.images[indexPath.row])
        return cell
        
        
        
        
        
        
    }


}

