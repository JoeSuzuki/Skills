//
//  ProfileViewController.swift
//  Skills
//
//  Created by Joe Suzuki on 4/7/18.
//  Copyright © 2018 Joe Suzuki. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        let redView = UIView()
        redView.backgroundColor = .red
        
        view.addSubview(redView)
        
        redView.translatesAutoresizingMaskIntoConstraints = false
        
        redView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        redView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        redView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        redView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
    }
    
    
}

