//
//  Crop.swift
//  CloudinarySwift
//
//  Created by Leandro Lourenci on 7/1/16.
//
//

import Foundation

public enum Crop: String, TransformationType {
    case scale, fit, limit, mfit, fill, lfill, pad, lpad, mpad, crop, thumb, imaggaCrop, imaggaScale

    public var paramOfURL: String {
        return "c"
    }
    
    public var valueOfParam: String {
        if self == .imaggaCrop {
            return "imagga_crop"            
        } else if self == .imaggaScale {
            return "imagga_scale"
        } else {
            return self.rawValue
        }
    }
}
