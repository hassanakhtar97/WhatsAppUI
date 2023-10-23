//
//  CallsViewController.swift
//  WhatsAppUI
//
//  Created by Hassan Akhtar on 23/10/2023.
//

import UIKit

class CallsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    // MARK:- IBOutlets
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var callSegmentControl: UISegmentedControl!
    
    // MARK:- Life Cycle Methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupSegmentControl()
        setupTableView()
    }
    
    private func setupSegmentControl() {
        callSegmentControl.setTitleColor(.white, state: .selected)
        callSegmentControl.setTitleColor(UIColor(named: "textBlackColor")!, state: .normal)
    }
    
    private func setupTableView() {
        tableView.dataSource = self
        tableView.register(UINib(nibName: "CallsTableViewCell", bundle: nil), forCellReuseIdentifier: "callTableViewCell")
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 20
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "callTableViewCell", for: indexPath)
            return cell
        }
}
