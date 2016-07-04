//
//  Zoom.swift
//  CloudinarySwift
//

import Foundation

public enum Zoom: TransformationType {
    case percent(Float)
    
    public var paramOfURL: String {
        return "z"
    }
    
    public var valueOfParam: String {
        switch self {
        case .percent(let percent):
            return String(percent)
        }
    }
}
