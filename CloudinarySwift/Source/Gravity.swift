//
//  Gravity.swift
//  CloudinarySwift
//

import Foundation

public enum Gravity: String, TransformationType {
    case northWest, north, northEast, west, center, east, southWest, south, southEast, xyCenter, face
    case faceCenter, faces, facesCenter, body, adv_face, advFaces, advEyes, custom, customFace, customFaces
    case customAdvFace, customAdvFaces
    
    public var paramOfURL: String {
        return "g"
    }
    
    public var valueOfParam: String {
        switch self {
        case .northWest:
            return "north_west"
        case .northEast:
            return "north_east"
        case .southWest:
            return "south_west"
        case .southEast:
            return "south_east"
        case .xyCenter:
            return "xy_center"
        case .faceCenter:
            return "face:center"
        case .facesCenter:
            return "faces:center"
        case .adv_face:
            return "adv_face"
        case .advFaces:
            return "adv_faces"
        case .advEyes:
            return "adv_eyes"
        case .customFace:
            return "custom:face"
        case .customFaces:
            return "custom:faces"
        case .customAdvFace:
            return "custom:adv_face"
        case .customAdvFaces:
            return "custom:adv_faces"
        default:
            return self.rawValue
        }
    }
}
