//
//  Opacity.swift
//  CloudinarySwift
//
//  Created by Leandro Lourenci on 7/1/16.
//
//

import Foundation

public enum Opacity: TransformationType {
    case percent(Int)
    
    public var paramOfURL: String {
        return "o"
    }
    
    public var valueOfParam: String {
        switch self {
        case .percent(let value):
            return String(value)
        }
    }
}
