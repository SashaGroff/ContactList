//
//  ContactListViewController.swift
//  ContactList
//
//  Created by Aleksandr Goncharov on 14.12.2023.
//

import UIKit

class ContactListViewController: UITableViewController {
    
    // MARK: - Private Properties
    var persons: [Person]!
    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        let personInfoVC = segue.destination as? PersonInfoViewController
        personInfoVC?.person = persons[indexPath.row]
    }

    // MARK: - UITableViewDataSource
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        persons.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let personCell = tableView.dequeueReusableCell(withIdentifier: "personCell", for: indexPath)
        
        let person = persons[indexPath.row]
        
        var content = personCell.defaultContentConfiguration()
        content.text = person.fullName
        
        personCell.contentConfiguration = content
        
        return personCell
    }
}
