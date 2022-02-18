//
//  HomeButtonView.swift
//  curso-app
//
//  Created by PEDRO GALDIANO DE CASTRO on 17/02/22.
//

import UIKit

class HomeButtonView: UIView {
    
    let nibName = "HomeButtonView"
    var contentView: UIView?

    @IBOutlet var button: UIButton!
    
    @IBAction func buttonTapped(_ sender: UIButton) {
                print("apertado")
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)

        guard let view = loadViewFromNib() else { return }
        view.frame = self.bounds
        self.addSubview(view)
//        contentView = view
    }

    func loadViewFromNib() -> UIView? {
        let bundle = Bundle(for: type(of: self))
        let nib = UINib(nibName: nibName, bundle: bundle)
        return nib.instantiate(withOwner: self, options: nil).first as? UIView
    }
}
