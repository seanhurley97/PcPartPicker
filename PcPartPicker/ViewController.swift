//
//  ViewController.swift
//  PcPartPicker
//
//  Created by Sean Hurley on 4/20/15.
//  Copyright (c) 2015 Sean Hurley. All rights reserved.
//

import UIKit
import Parse

class ViewController: UIViewController
{
    @IBOutlet weak var scrollViewHomeView: UIScrollView!
    
    let myDatabase = FMDatabase(path: "/Users/student/Desktop/sql_computer_hardware_database/sql_computer_hardware_database_test_data.sql")

    override func viewDidLoad()
    {
        self.view.backgroundColor = UIColor(patternImage: UIImage (named: "PCPartPickerHOME_0001_Background")!)
        super.viewDidLoad()
        let testObject = PFObject(className: "TestObject")
        testObject["foo"] = "bar"
        testObject.saveInBackgroundWithBlock { (success: Bool, error: NSError?) -> Void in
        println("Object has been saved.")}
        if myDatabase.open()
        {
            println("database loaded successfully")
        }
    }
}