//
//  TabBarViewController.swift
//  ContactList
//
//  Created by Aleksandr Goncharov on 14.12.2023.
//

import UIKit

final class TabBarViewController: UITabBarController {
    
    // MARK: - Public Properties
    let persons = Person.getContactList()
    
    // MARK: - View Life Cycles
    override func viewDidLoad() {
        super.viewDidLoad()
        
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

