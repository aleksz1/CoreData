//
//  SecondPair.swift
//  CoreDataProblem
//
//  Created by Иван on 20.08.2018.
//  Copyright © 2018 Ivan-cor. All rights reserved.
//

import UIKit
import CoreData

class SecondPair: UIViewController {

    @IBOutlet weak var subjectLabel: UILabel!
    @IBOutlet weak var roomLabel: UILabel!
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    @IBOutlet weak var groupLabel: UILabel!
    @IBOutlet weak var captainLabel: UILabel!
    
    @IBOutlet weak var subjectField: UITextField!
    @IBOutlet weak var roomField: UITextField!
    @IBOutlet weak var timeField: UITextField!
    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var groupField: UITextField!
    @IBOutlet weak var captainField: UITextField!
    
    let appDelegate = UIApplication.shared.delegate as! AppDelegate
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let context = appDelegate.persistentContainer.viewContext
        let request = NSFetchRequest<NSFetchRequestResult>(entityName: "UserSecond")
        request.returnsObjectsAsFaults = false
        do {
            let result = try context.fetch(request)
            for data in result as! [NSManagedObject] {
                subjectField.text = data.value(forKey: "subject12") as? String
                roomField.text = data.value(forKey: "room12") as? String
                timeField.text = data.value(forKey: "time12") as? String
                emailField.text = data.value(forKey: "emailGroup12") as? String
                groupField.text = data.value(forKey: "group12") as? String
                captainField.text = data.value(forKey: "captain12") as? String
            }
        } catch {
            print("Failed")
        }
        
        
        subjectLabel.layer.borderWidth = 1.0
        roomLabel.layer.borderWidth = 1.0
        timeLabel.layer.borderWidth = 1.0
        emailLabel.layer.borderWidth = 1.0
        groupLabel.layer.borderWidth = 1.0
        captainLabel.layer.borderWidth = 1.0
    }
    
    @IBAction func saveButton(_ sender: UIButton) {
        let context = appDelegate.persistentContainer.viewContext
        let entity = NSEntityDescription.entity(forEntityName: "UserSecond", in: context)
        let newUser = NSManagedObject(entity: entity!, insertInto: context)
        newUser.setValue(self.subjectField!.text, forKey: "subject12")
        newUser.setValue(self.roomField!.text, forKey: "room12")
        newUser.setValue(self.timeField!.text, forKey: "time12")
        newUser.setValue(self.emailField!.text, forKey: "emailGroup12")
        newUser.setValue(self.groupField!.text, forKey: "group12")
        newUser.setValue(self.captainField!.text, forKey: "captain12")
        do {
            try context.save()
        } catch {
            print("Failed saving")
        }
    }
}


