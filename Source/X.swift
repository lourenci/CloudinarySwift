//
//  X.swift
//  CloudinarySwift
//

import Foundation

public enum X: TransformationType {
    case pixel(Int)
    case percent(Float)
    
    public var paramOfURL: String {
        return "x"
    }
    
    public var valueOfParam: String {
        switch self {
        case .pixel(let pixel):
            return String(pixel)
        case .percent(let percent):
            return String(percent)
        }
    }
}
