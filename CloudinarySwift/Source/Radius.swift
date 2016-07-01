//
//  Radius.swift
//  CloudinarySwift
//
//  Created by Leandro Lourenci on 7/1/16.
//
//

import Foundation

public enum Radius: TransformationType {
    case pixels(Int)
    case max
    
    public var paramOfURL: String {
        return "r"
    }
    
    public var valueOfParam: String {
        switch self {
        case .pixels(let value):
            return String(value)
        case .max:
            return "max"
        }
    }
}
