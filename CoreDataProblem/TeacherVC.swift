//
//  TeacherVC.swift
//  CoreDataProblem
//
//  Created by Иван on 20.08.2018.
//  Copyright © 2018 Ivan-cor. All rights reserved.
//

import UIKit

class TeacherVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    enum DaysOfWeek: Int {
        case UpMonday = 11
        case UpTuesday = 12
        case UpWednesday = 13
        case UpThursday = 14
        case UpFriday = 15
        case downMonday = 16
        case downTuesday = 17
        case downWednesday = 18
        case downThursday = 19
        case downFriday = 20
    }
    
    @IBAction func weeksButtonPressed(_ sender: UIButton) {
        guard let day = DaysOfWeek.init(rawValue: sender.tag) else { return }
        switch day {
        case .UpMonday:
            performSegue(withIdentifier: "ShowPair", sender: self)
            break
        case .UpTuesday:
            performSegue(withIdentifier: "ShowPair", sender: self)
            break
        case .UpWednesday:
            performSegue(withIdentifier: "ShowPair", sender: self)
            break
        case .UpThursday:
            performSegue(withIdentifier: "ShowPair", sender: self)
            break
        case .UpFriday:
            performSegue(withIdentifier: "ShowPair", sender: self)
            break
        case .downMonday:
            performSegue(withIdentifier: "ShowPair", sender: self)
            break
        case .downTuesday:
            performSegue(withIdentifier: "ShowPair", sender: self)
            break
        case .downWednesday:
            performSegue(withIdentifier: "ShowPair", sender: self)
            break
        case .downThursday:
            performSegue(withIdentifier: "ShowPair", sender: self)
            break
        case .downFriday:
            performSegue(withIdentifier: "ShowPair", sender: self)
            break
        }
    }
}
