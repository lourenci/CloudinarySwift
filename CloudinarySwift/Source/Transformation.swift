//
//  Transformation.swift
//  CloudinarySwift
//

import Foundation

public class Transformation {
    private var transformationTypes: [TransformationType] = []
    private var transformation: Transformation?
    
    private let transformationTypesSeparator = ","
    private let transformationSeparator = "/"
    
    public init () {}
    public init(forTranformation: Transformation) {
        transformation = forTranformation
    }
    
    public func crop(_ crop: Crop) -> Self {
        transformationTypes.append(crop)
        
        return self
    }
    public func width(_ width: Width) -> Self {
        transformationTypes.append(width)
        
        return self
    }
    public func gravity(_ gravity: Gravity) -> Self {
        transformationTypes.append(gravity)
        
        return self
    }
    public func height(_ height: Height) -> Self {
        transformationTypes.append(height)
        
        return self
    }
    public func aspectRatio(_ aspectRatio: AspectRatio) -> Self {
        transformationTypes.append(aspectRatio)
        
        return self
    }
    public func zoom(_ zoom: Zoom) -> Self {
        transformationTypes.append(zoom)
        
        return self
    }
    public func x(_ x: X) -> Self {
        transformationTypes.append(x)
        
        return self
    }
    public func y(_ y: Y) -> Self {
        transformationTypes.append(y)
        
        return self
    }
    public func fetchFormat(_ fetchFormat: FetchFormat) -> Self {
        transformationTypes.append(fetchFormat)
        
        return self
    }
    public func quality(_ quality: Quality) -> Self {
        transformationTypes.append(quality)
        
        return self
    }
    public func radius(_ radius: Radius) -> Self {
        transformationTypes.append(radius)
        
        return self
    }
    public func angle(_ angle: Angle) -> Self {
        transformationTypes.append(angle)
        
        return self
    }
    public func effect(_ effect: Effect) -> Self {
        transformationTypes.append(effect)
        
        return self
    }
    public func opacity(_ opacity: Opacity) -> Self {
        transformationTypes.append(opacity)
        
        return self
    }
    public func background(_ background: Background) -> Self {
        transformationTypes.append(background)
        
        return self
    }
    public func border(_ border: Border) -> Self {
        transformationTypes.append(border)
        
        return self
    }
    public func overlay(_ overlay: Overlay) -> Self {
        transformationTypes.append(overlay)
        
        return self
    }
        
    var url: String {
        return Transformation.makeURL(forTransformation: self, withChainSeparator: transformationSeparator)
    }
    
    private func transformationTypesToURL() -> String {
        var URL = ""

        for type in transformationTypes {
            URL += type.URL + transformationTypesSeparator
        }
        
        return String(URL.characters.dropLast())
    }
    
    private static func makeURL(forTransformation: Transformation, withChainSeparator separator: String) -> String {
        if let transformation = forTransformation.transformation {
            return Transformation.makeURL(forTransformation: transformation, withChainSeparator: separator) + String(separator) + forTransformation.transformationTypesToURL()
        } else {
            return forTransformation.transformationTypesToURL()
        }
    }
}
