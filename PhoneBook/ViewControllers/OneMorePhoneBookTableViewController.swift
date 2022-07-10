//
//  OneMorePhoneBookTableViewController.swift
//  PhoneBook
//
//  Created by kukushkin-ds on 09.07.2022.
//

import UIKit

class OneMorePhoneBookTableViewController: UITableViewController {
    
    var phoneBook: [Person]!
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        phoneBook.count
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        phoneBook[section].fullName
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        2
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let сell = tableView.dequeueReusableCell(withIdentifier: "person", for: indexPath)
        var content = сell.defaultContentConfiguration()
        let person = phoneBook[indexPath.section]
        
        if indexPath.row == 0 {
            content.text = person.phone
            content.image = UIImage(systemName: "phone")
        } else {
            content.text = person.email
            content.image = UIImage(systemName: "mail")
        }
        
        сell.contentConfiguration = content
        return сell
    }
    
}
