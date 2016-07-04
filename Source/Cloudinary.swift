//
//  Cloudinary.swift
//  CloudinarySwift
//

import Foundation

public final class Cloudinary {
    private let cloudName: String
    private let APIKey: String
    private let APISecret: String
    
    private lazy var uploader: Uploader = Uploader(APIKey: self.APIKey, cloudName: self.cloudName)
    
    public init(cloudName: String, APIKey: String, APISecret: String) {
        self.cloudName = cloudName
        self.APIKey = APIKey
        self.APISecret = APISecret
    }

    public func upload(file: Data, resultHandle: (String) -> ()) {
        resultHandle(uploader.upload(file: file))
    }
    public func upload(file: Data, withTransformation transformation: Transformation, resultHandle: (String) -> ()) {
        resultHandle(transformation.URL)
    }
    
}
