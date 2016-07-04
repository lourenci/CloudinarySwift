//
//  Background.swift
//  CloudinarySwift
//

import Foundation

public enum Background: TransformationType {
    case color(Color)
    
    public var paramOfURL: String {
        return "b"
    }
    
    public var valueOfParam: String {
        switch self {
        case .color(let color):
            return color.rawValue
        }
    }
}
