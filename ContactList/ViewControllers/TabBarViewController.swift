//
//  TabBarViewController.swift
//  ContactList
//
//  Created by Aleksandr Goncharov on 14.12.2023.
//

import UIKit

class TabBarViewController: UITabBarController {
    
    // MARK: - Public Properties
    var persons = Person.getContactList()

    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let viewControllers else { return }
        
        for viewController in viewControllers {
            if let contactListVC = viewController as? ContactListViewController {
                contactListVC.persons = persons
            } else if let personsListVC = viewController as? PersonsListViewController {
                personsListVC.persons = persons
            }
        }
    }
}

