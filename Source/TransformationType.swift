//
//  TransformationType.swift
//  CloudinarySwift
//

import Foundation

public protocol TransformationType {
    var paramOfURL: String { get }
    var valueOfParam: String { get }
    var url: String { get }
}

extension TransformationType {
    public var url: String {
        return paramOfURL + "_" + valueOfParam
    }
}
