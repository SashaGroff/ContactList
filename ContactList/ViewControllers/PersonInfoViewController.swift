//
//  PersonInfoViewController.swift
//  ContactList
//
//  Created by Aleksandr Goncharov on 14.12.2023.
//

import UIKit

class PersonInfoViewController: UIViewController {
    
    // MARK: -
    @IBOutlet var phoneNumberLabel: UILabel!
    @IBOutlet var emailLabel: UILabel!
    
    var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = person.fullName
        phoneNumberLabel.text = "Phone: \(person.phoneNumber)"
        emailLabel.text = "Email: \(person.email)"
    }
}
