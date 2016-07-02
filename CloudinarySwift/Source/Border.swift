//
//  Border.swift
//  CloudinarySwift
//

import Foundation

public enum Border: TransformationType {
    case style(isSolid: Bool, widthInPx: Int, color: Color)
    
    public var paramOfURL: String {
        return "bo"
    }
    
    public var valueOfParam: String {
        if case let .style(isSolid, width, color) = self {
            return "\(width)px" + (isSolid ? "_solid" : "") + "_\(color.rawValue)"
        }
    }
}
