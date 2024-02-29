//
//  DetailsViewController.swift
//  Navigation-Controller-Task
//
//  Created by Ahmad Musallam on 29/02/2024.
//

// DetailsViewController.swift
import UIKit
import SnapKit

class DetailsViewController: UIViewController {
    
    var receivedMessage: String?
     let messageLabel = UILabel()
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        view.backgroundColor = .white
        setupLabel()
    }
    
    func setupLabel() {
        messageLabel.textAlignment = .center

        
        view.addSubview(messageLabel)
        messageLabel.snp.makeConstraints { make in
            make.center.equalToSuperview()
            make.width.equalTo(300)
            make.height.equalTo(300)
        }
        
        messageLabel.text = receivedMessage
    }
}
