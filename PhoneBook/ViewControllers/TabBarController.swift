//
//  TabBarController.swift
//  PhoneBook
//
//  Created by kukushkin-ds on 09.07.2022.
//

import UIKit

class TabBarController: UITabBarController {

    private let phoneBook = Person.getPhoneBook()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let phoneBookNavigationVC = viewControllers?[0] as? UINavigationController else { return }
        guard let phoneBookTableVC = phoneBookNavigationVC.topViewController as? PhoneBookTableViewController else { return }
        phoneBookTableVC.phoneBook = phoneBook
        
        guard let oneMorePhoneBookNavigationVC = viewControllers?[1] as? UINavigationController else { return }
        guard let oneMorePhoneBookTableVC = oneMorePhoneBookNavigationVC.topViewController as? OneMorePhoneBookTableViewController else { return }
        oneMorePhoneBookTableVC.phoneBook = phoneBook

    }
    
}
    




