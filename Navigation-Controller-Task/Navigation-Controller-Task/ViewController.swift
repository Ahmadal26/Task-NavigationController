//
//  ViewController.swift
//  Navigation-Controller-Task
//
//  Created by Ahmad Musallam on 29/02/2024.
import UIKit
import SnapKit

class ViewController: UIViewController {
    let showDetailsButton = UIButton(type: .system)

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setupButton()
        appConstrain()
    }
    
   func setupButton() {
        showDetailsButton.setTitle("Show Details", for: .normal)
        showDetailsButton.addTarget(self, action: #selector(showDetailsButtonTapped), for: .touchUpInside)
        
       
    }
    func appConstrain(){
        
        view.addSubview(showDetailsButton)
        showDetailsButton.snp.makeConstraints { make in
            make.center.equalToSuperview()
            make.width.equalTo(300)
            make.height.equalTo(50)
        }
        
        
        
    }
    @objc func showDetailsButtonTapped() {
        let detailsViewController = DetailsViewController()
        detailsViewController.receivedMessage = "Hello this is the Details View Page 🧾"
        navigationController?.pushViewController(detailsViewController, animated: true)
    }
}
