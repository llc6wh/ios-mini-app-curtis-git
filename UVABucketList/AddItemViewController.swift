//
//  AddItemViewController.swift
//  UVABucketList
//
//  Created by user145551 on 10/10/18.
//  Copyright © 2018 user145551. All rights reserved.
//

import UIKit

class AddItemViewController: UIViewController {

    @IBOutlet weak var theName: UILabel!
    @IBOutlet weak var nameField: UITextField!
    
    @IBOutlet weak var theDescription:UILabel!
    @IBOutlet weak var descriptionField: UITextField!
    
    @IBOutlet weak var theLatitutde:UILabel!
    @IBOutlet weak var latitutdeField: UITextField!
    
    @IBOutlet weak var theLongitude:UILabel!
    @IBOutlet weak var longitudeField: UITextField!
    
    @IBOutlet weak var date:UILabel!
    @IBOutlet weak var dateField: UIDatePicker!
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(AddItemViewController.dismissKeyboard))
        view.addGestureRecognizer(tap)
    }
    
    @objc func dismissKeyboard() {
        //Causes the view (or one of its embedded text fields) to resign the first responder status.
        view.endEditing(true)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    


    

    // MARK: - Navigation
 //UVABucketListSegue is the save button action that adds the new item to the current list in the bucketlistactivity

    /*override func prepare(for unwindSegue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "AddItemSegue"){
            if let destinationVC = segue.destination as? BucketListTableViewController {
                let newBucketItem = new BucketItem()
                destinationVC.prepopulatedList += newBucketItem!
        }
    }
 }
*/

}

