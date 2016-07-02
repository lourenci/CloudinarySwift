//
//  Overlay.swift
//  CloudinarySwift
//

import Foundation

public enum Overlay: TransformationType {
    case image(publicID: String)
    case text(String, withPredefinedStyleFromPublicID: String)
    
    public var paramOfURL: String {
        return "l"
    }
    
    public var valueOfParam: String {
        switch self {
        case .image(let value):
            return value
        case let .text(text, style):
            return "text:\(style):\(text)"
        }
    }
    
}
