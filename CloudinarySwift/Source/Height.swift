//
//  Width.swift
//  CloudinarySwift
//
//  Created by Leandro Lourenci on 7/1/16.
//
//

import Foundation

public enum Height: TransformationType {
    case pixel(Int)
    case percent(Float)
    
    public var paramOfURL: String {
        return "h"
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
