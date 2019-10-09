//
//  LoginViewController.swift
//  Wildfire
//
//  Created by Uday Pandey on 09/10/2019.
//  Copyright © 2019 Uday Pandey. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .systemTeal

        let label = UILabel()
        label.numberOfLines = 0
        label.textAlignment = .center
        label.text = "Feet On The Ground\n\nIOS Version: \(UIDevice.current.systemVersion)"
        label.font = .systemFont(ofSize: 24)
        label.textColor = .white
        label.translatesAutoresizingMaskIntoConstraints = false

        view.addSubview(label)

        label.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        label.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    }
}
