//
//  AMGAutolayoutLabel.swift
//  Pods
//
//  Created by Albert Montserrat on 20/2/17.
//
//

import UIKit

@IBDesignable class AMGAutolayoutLabel: UILabel {

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
        
        self.font = UIFont(name: self.font.fontName, size: AMGAutolayoutHelper.shared.convertSize(size: self.font.pointSize, axis: autoAxis))
    }

}
