//
//  HomeButtonView.swift
//  curso-app
//
//  Created by PEDRO GALDIANO DE CASTRO on 17/02/22.
//

import UIKit

protocol HomeButtonDelegate: AnyObject {
    func loginWasNotImplementedPopUp()
    func exitAplicationCheckPopUp(_ sender: UIButton)
    func goToViewController(identifier: String)
}

class HomeButtonView: UIView {
    
    weak var delegate: HomeButtonDelegate?
    
    let nibName = "HomeButtonView"
    var contentView: UIView?

    @IBOutlet var button: UIButton!
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)

        guard let view = self.loadViewFromNib() else { return }
        view.frame = self.bounds
        self.addSubview(view)
        contentView = view
        
        button.layer.cornerRadius = 10
    }

    func loadViewFromNib() -> UIView? {
        let bundle = Bundle(for: type(of: self))
        let nib = UINib(nibName: nibName, bundle: bundle)
        return nib.instantiate(withOwner: self, options: nil).first as? UIView
    }
    
    
    @IBAction func buttonTapped(_ sender: UIButton) {
        switch sender.currentTitle {
        case "Login":
            delegate?.loginWasNotImplementedPopUp()
        case "Courses":
            delegate?.goToViewController(identifier: "goToCourses")
        case "Exit":
            delegate?.exitAplicationCheckPopUp(sender)
        default:
            break
        }
    }
}
