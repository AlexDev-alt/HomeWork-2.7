//
//  NameListViewController.swift
//  HomeWork 2.7
//
//  Created by Macbook on 19.02.2020.
//  Copyright © 2020 Alex Dev. All rights reserved.
//

import UIKit

class NameListViewController: UITableViewController {
     
    //MARK: - Publick properties
    var nameList = Person.getPersonDate()

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        nameList.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "name", for: indexPath)
        
        let personData = nameList[indexPath.row]
        cell.textLabel?.text = personData.fullName

        return cell
    }

    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let indexPath = tableView.indexPathForSelectedRow {
            let personInfoVC = segue.destination as! PersonInfoViewController
            
            personInfoVC.number = nameList[indexPath.row].phoneNumber
            personInfoVC.email = nameList[indexPath.row].email
            
        }
    }

}
