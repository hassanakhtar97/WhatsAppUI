//
//  SettingsViewController.swift
//  WhatsAppUI
//
//  Created by Hassan Akhtar on 23/10/2023.
//

import UIKit

class SettingsViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var imageView: UIViewController!
    @IBOutlet weak var labelView: UIViewController!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTableView()
    }
    
    fileprivate func setupTableView() {
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(UINib(nibName: "SettingsProfileTableViewCell", bundle: nil), forCellReuseIdentifier: "settingsProfileCell")
        tableView.register(UINib(nibName: "SettingsListTableViewCell", bundle: nil), forCellReuseIdentifier: "settingsListCell")
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 12
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row == 1 || indexPath.row == 4 || indexPath.row == 9 {
            let cell = UITableViewCell()
            cell.selectionStyle = .none
            cell.backgroundColor = UIColor(named: "appAppearenceColor")
            return cell
        }
        
        if indexPath.row == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "settingsProfileCell", for: indexPath)
            return cell
        }
        if indexPath.row == 2 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "settingsListCell", for: indexPath)
            cell.imageView?.image = UIImage(named: "starIcon")
            cell.textLabel?.text = "Starred Messages"
            return cell
        }
        if indexPath.row == 3 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "settingsListCell", for: indexPath)
            cell.imageView?.image = UIImage(named: "linkingIcon")
            cell.textLabel?.text = "WhatsApp Web/Desktop"
            return cell
        }
        if indexPath.row == 5 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "settingsListCell", for: indexPath)
            cell.imageView?.image = UIImage(named: "accountIcon")
            cell.textLabel?.text = "Accounts"
            return cell
        }
        if indexPath.row == 6 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "settingsListCell", for: indexPath)
            cell.imageView?.image = UIImage(named: "chatsIcon")
            cell.textLabel?.text = "Chats"
            return cell
        }
        if indexPath.row == 7 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "settingsListCell", for: indexPath)
            cell.imageView?.image = UIImage(named: "notificationIcon")
            cell.textLabel?.text = "Notifications"
            return cell
        }
        if indexPath.row == 8 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "settingsListCell", for: indexPath)
            cell.imageView?.image = UIImage(named: "dataIcon")
            cell.textLabel?.text = "Data and Storage Useage"
            return cell
        }
        if indexPath.row == 10 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "settingsListCell", for: indexPath)
            cell.imageView?.image = UIImage(named: "helpIcon")
            cell.textLabel?.text = "Help"
            return cell
        }
        if indexPath.row == 11 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "settingsListCell", for: indexPath)
            cell.imageView?.image = UIImage(named: "inviteIcon")
            cell.textLabel?.text = "Tell a Friend"
            return cell
        }
        return UITableViewCell()
    }
}
