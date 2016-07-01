//
//  AspectRatio
//  CloudinarySwift
//
//  Created by Leandro Lourenci on 7/1/16.
//
//

import Foundation

public enum AspectRatio: TransformationType {
    case ratio(Int, Int)
    case percent(Float)
    
    public var paramOfURL: String {
        return "ar"
    }
    
    public var valueOfParam: String {
        switch self {
        case let .ratio(w, h):
            return String(w) + ":" + String(h)
        case .percent(let percent):
            return String(percent)
        }
    }
}
