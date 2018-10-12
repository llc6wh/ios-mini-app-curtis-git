//
//  BucketListTableViewController.swift
//  UVABucketList
//
//  Created by user145551 on 10/3/18.
//  Copyright © 2018 user145551. All rights reserved.
//

import UIKit

class BucketListTableViewController: UITableViewController {

    //MARK: Properties
    
    var prepopulatedItems = [BucketItem]()
    var editIndex:Int?
    
    func loadPrepopulatedList(){
        let item1 = BucketItem(itemName: "Streak the lawn", date: Date(), description: "the longest yard", latitude: 0.0, longitude: 0.0)
        prepopulatedItems += [item1]
        let item2 = BucketItem(itemName: "Go Streamtunneling", date: Date(), description: "go in the sewers below Ohill", latitude: 2.1, longitude: 2.0)
        prepopulatedItems += [item2]
    }
    
    
    
    //MARK: Basic ViewController Functions
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadPrepopulatedList()
    }
    
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    
    // Lets you add various buttons when you swipe
    override func tableView(_ tableView: UITableView, editActionsForRowAt: IndexPath) -> [UITableViewRowAction]? {
        let done = UITableViewRowAction(style: .normal, title: "Done") { action, index in
            
            
        }
        done.backgroundColor = .green
        
        let edit = UITableViewRowAction(style: .normal, title: "Edit") { action, index in
            
            
            
        }
        edit.backgroundColor = .orange
        
        
        return [done, edit]
    }

    // MARK: TableView Functions
    
    // Override to show how many items there should be
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    // Override to show how many items are in the list
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return prepopulatedItems.count
    }

    
    // Override to show what each cell should have in it based on the item in the list
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        // Table view cells are reused and should be dequeued using a cell identifier.
        let cellIdentifier = "BucketListTableViewCell"
        
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as! BucketListTableViewCell
        
        // Fetches the appropriate note for the data source layout.
        let item = prepopulatedItems[indexPath.row]
        
        cell.itemNameLabel.text = item.itemName
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .short
        let convertedDate = dateFormatter.string(from: item.date)
        cell.dateLabel.text = convertedDate
        
        return cell
    }
    
    
    

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     if(segue.identifier == "EditItemSegue"){
        if let navigator = segue.destination as? UINavigationController {
            if let navToEditVC = navigator.topViewController as? EditItemViewController{
                if let selectedItemIndex = index {
                    let selectedItem = prepopulatedItems[selectedItemIndex]
                    navToEditVC.currentlyEditedItem = selectedItem
                }
                performSegue(EditItemSegue, BucketListTableViewController)
            }
           
            
            }
        
        
        }
        
     }
}
 


