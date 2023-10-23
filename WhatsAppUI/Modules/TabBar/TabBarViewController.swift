//
//  ViewController.swift
//  WhatsAppUI
//
//  Created by Hassan Akhtar on 18/10/2023.
//

import UIKit

final class TabBarViewController: UITabBarController, UITabBarControllerDelegate {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.delegate = self
        setupUI()
    }
    
    fileprivate func setupUI() {
        if let tabBarItems = tabBar.items {
            tabBarItems[0].title = "Status"
            tabBarItems[0].image = UIImage(named: "status")
            tabBarItems[0].selectedImage = UIImage(named: "statusSelected")
            
            tabBarItems[1].title = "Calls"
            tabBarItems[1].image = UIImage(named: "phone")
            tabBarItems[1].selectedImage = UIImage(named: "phoneSelected")
            
            tabBarItems[2].title = "Camera"
            tabBarItems[2].image = UIImage(named: "camera")
            tabBarItems[2].selectedImage = UIImage(named: "cameraSelected")
            
            tabBarItems[3].title = "Chats"
            tabBarItems[3].image = UIImage(named: "chat")
            tabBarItems[3].selectedImage = UIImage(named: "chatSelected")
            
            tabBarItems[4].title = "Settings"
            tabBarItems[4].image = UIImage(named: "setting")
            tabBarItems[4].selectedImage = UIImage(named: "settingSelected")
        }
        
        tabBar.isTranslucent = true
        tabBar.backgroundColor = UIColor(named: "tabBarBackgroundColor")
    }
}

