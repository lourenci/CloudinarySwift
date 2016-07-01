//
//  FetchFormat.swift
//  CloudinarySwift
//
//  Created by Leandro Lourenci on 7/1/16.
//
//

import Foundation

public enum FetchFormat: TransformationType {
    case auto
    case format(Format)
    
    public var paramOfURL: String {
        return "f"
    }
    
    public var valueOfParam: String {
        switch self {
        case .auto:
            return "auto"
        case .format(let format):
            return format.rawValue
        }
    }    
    
}
