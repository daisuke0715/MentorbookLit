//
//  ViewController.swift
//  MentorBook
//
//  Created by 河村大介 on 2021/08/20.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var courseLabel: UILabel!
    
    var index: Int = 0
    
    var mentorArray: [Mentor] = [Mentor]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mentorArray.append(Mentor(name: "ながた", course: "iPhone", imageName: "person1"))
        mentorArray.append(Mentor(name: "りょう", course: "Android", imageName: "person2"))
        mentorArray.append(Mentor(name: "たいてぃ", course: "Unity", imageName: "person3"))
        
        setUI()
    }
    
    func setUI() {
        imageView.image = mentorArray[index].getImage()
        nameLabel.text = mentorArray[index].name
        courseLabel.text = mentorArray[index].course
    }
    
    @IBAction func before() {
        index -= 1
        if index < 0 {
            index = 2
        }
        setUI()
    }
    
    @IBAction func after() {
        index += 1
        
        if index > 2 {
            index = 0
        }
        setUI()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
}

