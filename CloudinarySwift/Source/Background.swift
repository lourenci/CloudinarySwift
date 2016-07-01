//
//  Background.swift
//  CloudinarySwift
//
//  Created by Leandro Lourenci on 7/1/16.
//
//

import Foundation

public enum Background: TransformationType {
    case color(Color)
    case rgbColor(String)
    
    public var paramOfURL: String {
        return "b"
    }
    
    public var valueOfParam: String {
        switch self {
        case .color(let color):
            return color.rawValue
        case .rgbColor(var rgb):
            if rgb.hasPrefix("#") {
                rgb = rgb.substringFromIndex(rgb.startIndex.advancedBy(1))
            }
            
            return "rgb:" + rgb
        }
    }
    
}