//
//  Text.swift
//  CloudinarySwift
//
//  Created by Leandro Lourenci on 7/1/16.
//
//

import Foundation

public struct Text {
    public struct Options {
        public enum Weight: String {
            case normal, bold
        }
        
        public enum Style: String {
            case normal, italic
        }
        
        public enum Decoration: String {
            case underline, none
        }
    }
    
    var fontFamily: String?
    var fontSize: Int?
    var fontColor: Color?
    var fontWeight: Text.Options.Weight?
    var fontStyle: Text.Options.Style?
    
    var background: Color?
    var opacity: Int? {
        didSet {
            do {
                try isOpacityValid()
            } catch Error.opacityOutRange {
                print("Opacity is from 0 to 100")
            } catch (let error) {
                print(error)
            }
        }
    }
    var textDecoration: Text.Options.Decoration?
    
    init() {}
    
    private func isOpacityValid() throws {
        guard opacity >= 0 && opacity <= 100 else {
            throw Error.opacityOutRange
        }
    }
}