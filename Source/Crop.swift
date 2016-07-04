//
//  Crop.swift
//  CloudinarySwift
//

import Foundation

public enum Crop: TransformationType {
    case scale, fit, limit, mfit, fill, lfill, pad, lpad, mpad, crop, thumb, imaggaCrop, imaggaScale(Height, Width)

    public var paramOfURL: String {
        return "c"
    }
    
    public var valueOfParam: String {
        switch self {
        case .scale:
            return "scale"
        case .fit:
            return "fit"
        case .limit:
            return "limit"
        case .mfit:
            return "mfit"
        case .fill:
            return "fill"
        case .lfill:
            return "lfill"
        case .pad:
            return "pad"
        case .lpad:
            return "lpad"
        case .mpad:
            return "mpad"
        case .crop:
            return "crop"
        case .thumb:
            return "thumb"
        case .imaggaCrop:
            return "imagga_crop"            
        case let .imaggaScale(h, w):
            return "imagga_scale,\(h.URL),\(w.URL)"
        }
    }
}
