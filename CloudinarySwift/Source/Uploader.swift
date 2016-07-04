//
//  Uploader.swift
//  CloudinarySwift
//

import Foundation

public class Uploader {
    /*
    https://api.cloudinary.com/v1_1/<cloud name>/<resource_type>/upload
    cloud name is the name of your Cloudinary account.
    resource_type is the type of file to upload. Valid values: image, raw, video and auto to automatically detect the file type.
    */
    
    private var URL: String {
        return "https://api.cloudinary.com/v1_1/\(cloudName)/image/upload"
    }
    private let APIKey: String
    private let cloudName: String
    
    private var timestamp: String {
        return NSDate().timeIntervalSince1970.description
    }
    
    private var signature: String?
    
    init(APIKey: String, cloudName: String) {
        self.APIKey = APIKey
        self.cloudName = cloudName
    }
    
    func upload(file: Data) -> String {
        return "test"
    }
    func upload(file: Data, withTransformation transformation: Transformation) -> String {
        transformation.transformationSeparator = "|"
    }
    
    
    func makeURL(file: Data) {
        var URL = ""
        
    }
    
    
}
