//
//  ThirdPair.swift
//  CoreDataProblem
//
//  Created by Иван on 20.08.2018.
//  Copyright © 2018 Ivan-cor. All rights reserved.
//

import UIKit
import CoreData

class ThirdPair: UIViewController {

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
        let request = NSFetchRequest<NSFetchRequestResult>(entityName: "UserThird")
        request.returnsObjectsAsFaults = false
        do {
            let result = try context.fetch(request)
            for data in result as! [NSManagedObject] {
                subjectField.text = data.value(forKey: "subject13") as? String
                roomField.text = data.value(forKey: "room13") as? String
                timeField.text = data.value(forKey: "time13") as? String
                emailField.text = data.value(forKey: "emailGroup13") as? String
                groupField.text = data.value(forKey: "group13") as? String
                captainField.text = data.value(forKey: "captain13") as? String
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
        let entity = NSEntityDescription.entity(forEntityName: "UserThird", in: context)
        let newUser = NSManagedObject(entity: entity!, insertInto: context)
        newUser.setValue(self.subjectField!.text, forKey: "subject13")
        newUser.setValue(self.roomField!.text, forKey: "room13")
        newUser.setValue(self.timeField!.text, forKey: "time13")
        newUser.setValue(self.emailField!.text, forKey: "emailGroup13")
        newUser.setValue(self.groupField!.text, forKey: "group13")
        newUser.setValue(self.captainField!.text, forKey: "captain13")
        do {
            try context.save()
        } catch {
            print("Failed saving")
        }
    }
}

