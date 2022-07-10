//
//  PersonDetailsViewController.swift
//  PhoneBook
//
//  Created by kukushkin-ds on 09.07.2022.
//

import UIKit

class PersonDetailsViewController: UIViewController {

    @IBOutlet var phoneLabel: UILabel!
    @IBOutlet var emailLabel: UILabel!
    
    var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        title = person.fullName
        phoneLabel.text = "Phone: \(person.phone)"
        emailLabel.text = "Email: \(person.email)"
    }
    
}
