//
//  ViewController.swift
//  PcPartPicker
//
//  Created by Sean Hurley on 4/20/15.
//  Copyright (c) 2015 Sean Hurley. All rights reserved.
//

import UIKit
import Parse

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let testObject = PFObject(className: "TestObject")
        testObject["foo"] = "bar"
        testObject.saveInBackgroundWithBlock { (success: Bool, error: NSError?) -> Void in
        println("Object has been saved.")}
        println("big weenie")
    }
}