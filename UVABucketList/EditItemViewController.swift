//
//  EditItemViewController.swift
//  UVABucketList
//
//  Created by user145551 on 10/11/18.
//  Copyright © 2018 user145551. All rights reserved.
//

import UIKit

class EditItemViewController: UIViewController {

    var currentlyEditedItem: BucketItem?
    @IBOutlet weak var editName: UILabel!
    @IBOutlet weak var editNameField: UITextField!
    
    @IBOutlet weak var editDescription:UILabel!
    @IBOutlet weak var editDescriptionField:UITextField!
    
    @IBOutlet weak var editLatitude: UILabel!
    @IBOutlet weak var editLatitudeField: UITextField!
    
    @IBOutlet weak var editLongitude:UILabel!
    @IBOutlet weak var editLongitudeField:UITextField!
    
    @IBOutlet weak var editDate:UILabel!
    @IBOutlet weak var editDateField: UIDatePicker!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
