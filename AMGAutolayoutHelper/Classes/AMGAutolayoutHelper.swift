//
//  AMGAutolayoutHelper.swift
//  Pods
//
//  Created by Albert Montserrat on 20/2/17.
//
//

import Foundation

public class AMGAutolayoutHelper : NSObject {
    
    //Default size to iPhone 6 screen resolution
    public var defaultWidth: CGFloat = 375.0
    public var defaultHeight: CGFloat = 667.0
    
    public enum Axis : String {
        case horizontal = "horizontal"
        case vertical = "vertical"
    }
    
    public static let shared = AMGAutolayoutHelper()
    
    public func convertSize(size: CGFloat, axis: Axis = .horizontal) -> CGFloat {
        let screenSize = UIScreen.main.bounds.size
        if axis == .horizontal {
            return convertSize(size: size, axis: axis, original: defaultWidth, final: screenSize.width)
        } else {
            return convertSize(size: size, axis: axis, original: defaultHeight, final: screenSize.height)
        }
    }
    
    public func convertSize(size: CGFloat, axis: Axis, original: CGFloat, final: CGFloat) -> CGFloat {
        return CGFloat(Int((final * size) / original));
    }

    
}
