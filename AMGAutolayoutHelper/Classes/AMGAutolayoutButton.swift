//
//  AMGAutolayoutButton.swift
//  Pods
//
//  Created by Albert Montserrat on 20/2/17.
//
//

import UIKit

@IBDesignable class AMGAutolayoutButton: UIButton {

    var autoAxis: AMGAutolayoutHelper.Axis = .horizontal
    
    @available(*, unavailable, message: "This property is reserved for Interface Builder. Use 'shape' instead.")
    @IBInspectable var autoAxisName: String? {
        willSet {
            if let newAxis = AMGAutolayoutHelper.Axis(rawValue: newValue?.lowercased() ?? "") {
                autoAxis = newAxis
            }
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        self.titleLabel?.font = UIFont(name: (self.titleLabel?.font.fontName)!, size: AMGAutolayoutHelper.shared.convertSize(size: (self.titleLabel?.font.pointSize)!, axis: autoAxis))
    }

}
