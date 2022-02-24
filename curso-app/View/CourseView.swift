//
//  CourseView.swift
//  curso-app
//
//  Created by PEDRO GALDIANO DE CASTRO on 23/02/22.
//

import UIKit

class CourseView: UIView {
    
    let nibName = "CourseView"
    var contentView: UIView?
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        guard let view = self.loadViewFromNib() else { return }
        view.frame = self.bounds
        self.addSubview(view)
        contentView = view
    }
    
    func loadViewFromNib() ->UIView? {
        let bundle = Bundle(for: type(of: self))
        let nib = UINib(nibName: nibName, bundle: bundle)
        return nib.instantiate(withOwner: self, options: nil).first as? UIView
    }
}
