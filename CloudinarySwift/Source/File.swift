//
//  Image.swift
//  CloudinarySwift
//
//  Created by Leandro Lourenci on 6/30/16.
//
//

import Foundation

public enum File {
    case video(Data), image(Data), raw(Data)
    
    var rawValue: String {
        switch self {
        case .video:
            return "video"
        case .image:
            return "image"
        case .raw:
            return "raw"
        }
    }
    
    func base64() throws -> String {
        let data: Data
    
        switch self {
        case .video(let value):
            data = value
        case .image(let value):
            data = value
        case raw(let value):
            data = value
        }
        
        guard let converted = String(bytes: data, encoding: String.Encoding.utf8) else {
            throw Error.base64Encode
        }
        
        return converted
    }
}
