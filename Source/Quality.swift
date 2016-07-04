//
//  Quality.swift
//  CloudinarySwift
//

import Foundation

public enum Quality: TransformationType {
    case percent(Int)
    case percentWithChromaSubsampling(percent: Int, chromaSubsampling: Int)
    case auto, autoBest, autoGood, autoEco, autoLow
    case jpegmini
    
    public var paramOfURL: String {
        return "q"
    }
    
    public var valueOfParam: String {
        switch self {
        case .percent(let value):
            return String(value)
        case .percentWithChromaSubsampling(let value, let chromaSubsampling):
            return String(value) + ":" + String(chromaSubsampling)
        case .auto:
            return "auto"
        case .autoBest:
            return "auto:best"
        case .autoGood:
            return "auto:good"
        case .autoEco:
            return "auto:eco"
        case .autoLow:
            return "auto:low"
        case .jpegmini:
            return "jpegmini"
        }        
    }
}
