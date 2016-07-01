//
//  Angle.swift
//  CloudinarySwift
//
//  Created by Leandro Lourenci on 7/1/16.
//
//

import Foundation

enum Angle: TransformationType {
    case degrees(Int)
    case autoRight, autoLeft, ignore, vflip, hflip
    
    var paramOfURL: String {
        return "a"
    }
    
    var valueOfParam: String {
        switch self {
        case .degrees(let value):
            return String(value)
        case .autoRight:
            return "auto_right"
        case .autoLeft:
            return "auto_left"
        case .ignore:
            return "ignore"
        case .vflip:
            return "vflip"
        case .hflip:
            return "hflip"
        }
    }
}
