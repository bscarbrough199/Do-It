//
//  CreateTaskViewController.swift
//  Do It
//
//  Created by Brent Scarbrough on 12/8/17.
//  Copyright © 2017 Brent Scarbrough. All rights reserved.
//

import UIKit

class CreateTaskViewController: UIViewController {

    @IBOutlet weak var importantSwitch: UISwitch!
    @IBOutlet weak var taskNameField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func addTapped(_ sender: Any?) {
        // Create task from outlet's information.
        
        let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        
        let task = Task(context: context)
        
        task.name = taskNameField.text!
        task.important = importantSwitch.isOn
        (UIApplication.shared.delegate as! AppDelegate).saveContext()
        
        // Pop Back
        
        navigationController!.popViewController(animated: true)
    }
        
        

    


}
