//
//  TransformationType.swift
//  CloudinarySwift
//

import Foundation

public protocol TransformationType {
    var paramOfURL: String { get }
    var valueOfParam: String { get }
    var URL: String { get }
}

extension TransformationType {
    public var URL: String {
        return paramOfURL + "_" + valueOfParam
    }
}
