//
//  Angle.swift
//  CloudinarySwift
//

import Foundation

public enum Angle: TransformationType {
    case degrees(Int)
    case autoRight, autoLeft, ignore, vflip, hflip
    
    public var paramOfURL: String {
        return "a"
    }
    
    public var valueOfParam: String {
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
