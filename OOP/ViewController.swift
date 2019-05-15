//
//  ViewController.swift
//  OOP
//
//  Created by Leonnardo Benjamin Hutama on 15/05/19.
//  Copyright © 2019 Leonnardo Benjamin Hutama. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var profileImage: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var ageLabel: UILabel!
    @IBOutlet weak var heightLabel: UILabel!
    
    var learnerInstance: LearnerModel?
    var facilitatorInstance: FacilitatorModel?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        learnerInstance = LearnerModel(learnerName: "Leonnardo", learnerAge: 20, learnerHeight: 173.5, learnerImageProfile: "this is image")
        facilitatorInstance = FacilitatorModel(facilName: "Otong", facilAge: 21, facilHeight: 160.0, facilImageProfile: "asd", facilPerk: "Free Flow KOI")
        updateUI()
    }
    
    func updateUI(){
        if let instance = learnerInstance{
            nameLabel.text = instance.name
            ageLabel.text = "\(instance.age) years old"
            heightLabel.text = "\(instance.height) cm"
        }
    }

    @IBAction func increaseAgeButton(_ sender: UIButton) {
        if let instance = learnerInstance{
            instance.increaseAge()
            updateUI()
        }
    }
}

