//
//  Transformation.swift
//  CloudinarySwift
//

import Foundation

public class Transformation {
    private var transformationTypes: [TransformationType] = []
    private var transformations: [Transformation] = []
    
    init () {}
    init(forTranformation: Transformation) {
        transformations.append(forTranformation)
    }
    
    public func crop(crop: Crop) -> Self {
        transformationTypes.append(crop)
        
        return self
    }

    public func width(width: Width) -> Self {
        transformationTypes.append(width)
        
        return self
    }
    
    var URL: String {
        var value = "/"
        for transformation in transformations {
            for type in transformation.transformationTypes {
                value += type.URL
            }

            value += "/"
        }
        
        for type in transformationTypes {
            value += type.URL
        }
    }
}
