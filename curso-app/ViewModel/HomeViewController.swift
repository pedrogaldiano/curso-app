//
//  HomeViewController.swift
//  curso-app
//
//  Created by PEDRO GALDIANO DE CASTRO on 17/02/22.
//

import UIKit

class HomeViewController: UIViewController {
    
    @IBOutlet var loginButton: HomeButtonView!
    @IBOutlet var coursesButton: HomeButtonView!
    @IBOutlet var exitButton: HomeButtonView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "tela inicial"
        loginButton.button.setTitle("Login", for: .normal)
        coursesButton.button.setTitle("Courses", for: .normal)
        exitButton.button.setTitle("Exit", for: .normal)
        loginButton.delegate = self
        exitButton.delegate = self
        coursesButton.delegate = self
    }

    
    
}

extension HomeViewController: HomeButtonDelegate {
    func loginWasNotImplementedPopUp() {
        let alert = UIAlertController(title: "Login", message: "Thanks for trying.\nBut I didn't implement any form of login.\n\nI Probably should though...", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Ok", style: .default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
    func exitAplicationCheckPopUp(_ sender: UIButton) {
        let alert = UIAlertController(title: "Closing the app?", message: "You could just press the Home Button.\n\n(Apple doesn't like this method hehe.", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Cancel", style: .default, handler: nil))
        alert.addAction(UIAlertAction(title: "Close the app", style: .default, handler: { _ in
            exit(0)
        }))
        present(alert, animated: true, completion: nil)
    }
    func goToViewController(identifier: String) {
        performSegue(withIdentifier: identifier, sender: self)
    }
}
