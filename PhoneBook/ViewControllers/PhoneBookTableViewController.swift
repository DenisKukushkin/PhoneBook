//
//  PhoneBookViewController.swift
//  PhoneBook
//
//  Created by kukushkin-ds on 06.07.2022.
//

import UIKit

class PhoneBookTableViewController: UITableViewController {
    
    var phoneBook: [Person]!
    
    // MARK: - Table view data source
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        phoneBook.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "person", for: indexPath)
        var content = cell.defaultContentConfiguration()
        let person = phoneBook[indexPath.row]
        
        content.text = person.fullName
        
        cell.contentConfiguration = content
        return cell
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let detailsVC = segue.destination as? PersonDetailsViewController else { return }
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        let person = phoneBook[indexPath.row]
        detailsVC.person = person
    }
    
    
}
