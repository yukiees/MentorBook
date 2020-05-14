//
//  Mentor.swift
//  MentorBook
//
//  Created by 松島優希 on 2020/05/14.
//  Copyright © 2020 松島優希. All rights reserved.
//

import UIKit

class Mentor {
    
    var name: String!
    
    var course: String!
    
    var imageName: String!
    
    init(name: String, imageName: String, course: String) {
        self.name = name
        self.imageName = imageName
        self.course = course
    }
    
    func getImage() -> UIImage {
        return UIImage(named: imageName)!
    }
}
