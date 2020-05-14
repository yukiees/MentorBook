//
//  ViewController.swift
//  MentorBook
//
//  Created by 松島優希 on 2020/05/14.
//  Copyright © 2020 松島優希. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var mentorArray: [Mentor] = []
    
    @IBOutlet var imageView: UIImageView!
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var courseLabel: UILabel!
    
    var index: Int = 0
    
    
    override func viewDidLoad() {
           super.viewDidLoad()
           // Do any additional setup after loading the view.
           
           mentorArray.append(Mentor(name:  "ながた", imageName: "nagata.jpg", course: "iPhone"))
           mentorArray.append(Mentor(name:  "りょう", imageName: "ryo.jpg", course: "Unity"))
           mentorArray.append(Mentor(name:  "たいてぃ", imageName: "taithi.JPG", course: "webS,webD"))
           mentorArray.append(Mentor(name:  "ナベアツ", imageName: "nabeatsu.jpg", course: "Comedian"))
           
           setUI()
       }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func setUI(){
        imageView.image = mentorArray[index].getImage()
        nameLabel.text = mentorArray[index].name
        courseLabel.text = mentorArray[index].course
    }
    
    @IBAction func mae() {
        if index == 0{
            index = mentorArray.count - 1
            setUI()
        }else{
            index = index - 1
            setUI()
        }
    }
    
    
    @IBAction func tugi(){
        if index == mentorArray.count - 1 {
            index = 0
            setUI()
        }else{
           index = index + 1
           setUI()
        }
    }


}

