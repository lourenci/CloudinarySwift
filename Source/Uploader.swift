//
//  Uploader.swift
//  CloudinarySwift
//
/*
 https://api.cloudinary.com/v1_1/<cloud name>/<resource_type>/upload
 cloud name is the name of your Cloudinary account.
 resource_type is the type of file to upload. Valid values: image, raw, video and auto to automatically detect the file type.
 */

import Foundation

public class Uploader {
    public enum Option {
        case publicID(String)
        case folder(String)
    }
    
    private var url: String {
        return "https://api.cloudinary.com/v1_1/\(cloudName)/image/upload"
    }
    private let APIKey: String
    private let APISecret: String

    private let cloudName: String
    
    private var timestamp: String {
        return NSDate().timeIntervalSince1970.description
    }
    
    public init(APIKey: String, APISecret: String, cloudName: String) {
        self.APIKey = APIKey
        self.APISecret = APISecret

        self.cloudName = cloudName
    }
    
    func upload(file: Data) -> String {
        return ""
    }
    func upload(file: Data, withTransformation transformation: Transformation?, options: Option...) {
        _ = makeJSONForBody(file: file, transformation: transformation, options: options)
    }
    
    private func makeJSONForBody(file: Data, transformation: Transformation?, options: [Option]) -> [String: AnyObject] {
        var json: [String: AnyObject] = [:]
        
        json["file"] = file.base64EncodedString()
        json["api_key"] = APIKey
        json["eager"] = transformation?.url
        json["timestamp"] = timestamp
        
        for option in options {
            switch option {
            case .publicID(let value):
                json["public_id"] = value
            case .folder(let value):
                json["folder"] = value
            }
        }
        
        json["signature"] = sign(json: json)
        
        return json
    }
    
    private func sign(json: [String: AnyObject]) -> String {
        var newJSON = json
        
        newJSON.removeValue(forKey: "file")
        newJSON.removeValue(forKey: "api_key")
        
        let sorted = newJSON.sorted {
            $0.key < $1.key
        }
        
        var toSign = ""
        for value in sorted {
            toSign += value.key + "=" + (value.value as! String) + "&"
        }
        
        return String(toSign.characters.dropLast()) + APISecret
    }
}
