//
//  ChatsViewController.swift
//  WhatsAppUI
//
//  Created by Hassan Akhtar on 19/10/2023.
//

import UIKit

final class ChatsViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    // MARK:- IBOutlets
    
    @IBOutlet weak var tableView: UITableView!
    let searchController = UISearchController(searchResultsController: nil)
    
    // MARK:- Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.searchController = searchController
        setupTableView()
    }
    
    // MARK:- Private Methods
    
    private func setupTableView() {
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(UINib(nibName: "ChatListCell", bundle: nil), forCellReuseIdentifier: "ReuseableCell")
        tableView.register(UINib(nibName: "ChatListTopMenuTableViewCell", bundle: nil), forCellReuseIdentifier: "ChatListTopMenuCell")
    }
    
    // MARK:- UITableViewDataSource
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
      
        return 20
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "ChatListTopMenuCell", for: indexPath) as! ChatListTopMenuTableViewCell
            return cell
        }
        let cell = tableView.dequeueReusableCell(withIdentifier: "ReuseableCell", for: indexPath) as! ChatListCell
        if (indexPath.row == 1 || indexPath.row == 2) {
            return cell
        }
        return cell
    }
}

