//
//  HorizontalCoursesScrollView.swift
//  curso-app
//
//  Created by PEDRO GALDIANO DE CASTRO on 23/02/22.
//

import UIKit

class HorizontalCoursesScrollView: UIView {
    @IBOutlet var scrollView: UIScrollView!
    let nibName = "HorizontalCoursesScrollView"
    var contentView: UIView?
    
    required init?(coder aDecode: NSCoder) {
        super.init(coder: aDecode)
        
        guard let view = self.loadFromNib() else { return }
        view.frame = self.bounds
        self.addSubview(view)
        contentView = view
        
        
        
    }
    
    func loadFromNib() -> UIView? {
        let bundle = Bundle(for: type(of: self))
        let nib = UINib(nibName: nibName, bundle: bundle)
        return nib.instantiate(withOwner: self, options: nil).first as? UIView
    }
}
