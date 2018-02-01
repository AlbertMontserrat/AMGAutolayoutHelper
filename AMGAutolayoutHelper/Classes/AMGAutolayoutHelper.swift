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
        case both = "both"
    }
    
    public static let shared = AMGAutolayoutHelper()
    
    public func convertSize(size: CGFloat, axis: Axis = .horizontal, original: CGFloat? = nil, final: CGFloat? = nil) -> CGFloat {
        let o = original ?? {
            switch axis {
            case .horizontal:
                return defaultWidth
            case .vertical:
                return defaultHeight
            case .both:
                return defaultWidth / defaultHeight
            }
        }()

        let f = final ?? {
            let screenSize = UIScreen.main.bounds.size
            switch axis {
            case .horizontal:
                return screenSize.width
            case .vertical:
                return screenSize.height
            case .both:
                return screenSize.width / screenSize.height
            }
        }()

        return CGFloat(Int((f * size) / o));
    }

    
}
