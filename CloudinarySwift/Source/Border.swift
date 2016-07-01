//
//  Border.swift
//  CloudinarySwift
//
//  Created by Leandro Lourenci on 7/1/16.
//
//

import Foundation

enum Border: TransformationType {
    case style(isSolid: Bool, widthInPx: Int, rgbColor: UIColor)
    
    var paramOfURL: String {
        return "bo"
    }
    
    var valueOfParam: String {
        if case let .style(isSolid, width, rgbColor) = self {
            return String(width) + "px" + (isSolid ? "_solid" : "") + "_rgb:" + rgbColor.
        }
    }
    
}