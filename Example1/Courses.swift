//
//  Courses.swift
//  ExamPrepProject
//
//  Created by riya singhal on 06/05/22.
//

import UIKit

class Courses: UIViewController , UITableViewDelegate,UITableViewDataSource {
    
    @IBOutlet var tableView: UITableView!
    
    
    let myData = ["Identify(Free)", "Skills Videos($399 value)" , "AudioBook" ,   "Exam Prep" ]
    
    let mySubdata = ["Test your knowledge of the various tools covered throughout the manual with more than 70 tool identification photos.", "Prepare for the hands-on portion of firefighter training by watching 173 skills videos covering covering Firefighter I, Firefighter II,Hazardous Materials Awareness, and Hazardous Materials Operations. Each skills video details the steps required to pass the skill.", "The audiobook includes all 27 chapters accessible on the go.Download the content you'd like to revisit, and listen at your own speed.", "This module is located with 1,480 questions to test your understanding of the content presented in the Essentials of Fire Fighting. 7th Edition manual. Our Exam Prep module tracks and records your progress, allowing you to review your practice tests and focus on your weaknesses. In addition, your missed questions are automatically added to your study deck and reports are available to analyze your progress."]

    
    
    let myImageview = ["11","22", "33", "44"]
    
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let nib = UINib(nibName: "CustomCell1", bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: "CustomCell1")
        tableView.delegate = self
        tableView.dataSource = self

        
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myData.count
    }
    
    
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CustomCell1", for: indexPath) as! CustomCell1
        
        cell.myLabel.text = myData[indexPath.row]
        cell.myLabel1.text = mySubdata[indexPath.row]
        cell.myImageview.image = UIImage(named: self.myImageview[indexPath.row])
        
        return cell
    }
    
    
    
    
}










