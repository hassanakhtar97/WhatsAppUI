//
//  ChatListCell.swift
//  WhatsAppUI
//
//  Created by Hassan Akhtar on 19/10/2023.
//

import UIKit

class ChatListCell: UITableViewCell {
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var userAvatar: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        userAvatar.layer.cornerRadius = userAvatar.frame.height / 2
        userAvatar.layer.masksToBounds = true
        userAvatar.clipsToBounds = true
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func configureCell(name: String, message: String) {
        nameLabel.text = name
        messageLabel.text = message
    }
}
