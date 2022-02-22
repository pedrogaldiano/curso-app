//
//  NextViewController.swift
//  curso-app
//
//  Created by PEDRO GALDIANO DE CASTRO on 21/02/22.
//

import UIKit

class NextViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "pink"
        navigationItem.backBarButtonItem = UIBarButtonItem(title: " ", style: .plain, target: nil, action: nil)
        print("chegou na next controller")
    }
}
