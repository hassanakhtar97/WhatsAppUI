//
//  StatusViewController.swift
//  WhatsAppUI
//
//  Created by Hassan Akhtar on 22/10/2023.
//

import UIKit

class StatusViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    // MARK:- IBOutlets
    
    @IBOutlet weak var tableView: UITableView!
    
    // MARK:- Life Cycle Methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTableView()
    }
    
    // MARK:- Private Methods
    
    fileprivate func setupTableView() {
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(UINib(nibName: "StatusTableViewCell", bundle: nil), forCellReuseIdentifier: "myStatusReuseableCell")
        tableView.register(UINib(nibName: "EmptyStatusViewCell", bundle: nil), forCellReuseIdentifier: "emptyStatusCell")
    }
    
    // MARK:- UITableViewDataSource
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row == 0 || indexPath.row == 2 {
            let cell = UITableViewCell()
            cell.selectionStyle = .none
            cell.backgroundColor = UIColor(named: "appAppearenceColor")
            return cell
        }
        if indexPath.row == 3 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "emptyStatusCell", for: indexPath)
            return cell
        }
        let cell = tableView.dequeueReusableCell(withIdentifier: "myStatusReuseableCell", for: indexPath)
        return cell
    }
    
    
    // MARK:- UITableViewDelegate
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.row == 1 {
            return 76.0
        } else if indexPath.row == 3 {
            return 44.0
        }
        return 16.0
    }
    
}
