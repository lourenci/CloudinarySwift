//
//  Effect.swift
//  CloudinarySwift
//

import Foundation

public enum Effect: TransformationType {
    case hue(Int), red(Int), green(Int), blue(Int), negate, brightness(Int), brightnessHsb(Int), sepia(Int), grayscale, blackwhite, saturation(Int), colorize(Int), contrast(Int), autoContrast, vibrance(Int), autoColor, improve, autoBrightness, fillLight(Int), viesusCorrect, gamma(Int), screen, multiply, overlay, makeTransparent, trim, shadow(Int), distort(Int, Int, Int, Int, Int, Int, Int, Int), shear(degreeOfX: Int, degreeOfY: Int), displace, oilPaint(strength: Int), redeye, advRedeye, vignette(strength: Int), gradientFade(strength: Int), pixelate(Int), pixelateRegion(Int), pixelateFaces(Int), blur(strength: Int), blurRegion(strength: Int), blurFaces(strength: Int), sharpen(strength: Int), unsharpMask(strength: Int), orderedDither(ditherFilter: Int)
    
    public var paramOfURL: String {
        return "e"
    }
    
    public var valueOfParam: String {
        switch self {
        case .hue(let value):
            return "hue" + ":" + String(value)
        case .red(let value):
            return "red" + ":" + String(value)
        case .green(let value):
            return "green" + ":" + String(value)
        case .blue(let value):
            return "blue" + ":" + String(value)
        case .negate:
            return "negate"
        case .brightness(let value):
            return "brightness" + ":" + String(value)
        case .brightnessHsb(let value):
            return "brightness_hsb" + ":" + String(value)
        case .sepia(let value):
            return "sepia" + ":" + String(value)
        case .grayscale:
            return "grayscale"
        case .blackwhite:
            return "blackwhite"
        case .saturation(let value):
            return "saturation" + ":" + String(value)
        case .colorize(let value):
            return "colorize" + ":" + String(value)
        case .contrast(let value):
            return "contrast" + ":" + String(value)
        case .autoContrast:
            return "auto_contrast"
        case .vibrance(let value):
            return "vibrance" + ":" + String(value)
        case .autoColor:
            return "auto_color"
        case .improve:
            return "improve"
        case .autoBrightness:
            return "improve"
        case .fillLight(let value):
            return "fill_light" + ":" + String(value)
        case .viesusCorrect:
            return "viesus_correct"
        case .gamma(let value):
            return "gamma" + ":" + String(value)
        case .screen:
            return "screen"
        case .multiply:
            return "multiply"
        case .overlay:
            return "overlay"
        case .makeTransparent:
            return "make_transparent"
        case .trim:
            return "trim"
        case .shadow(let value):
            return "shadow" + ":" + String(value)
        case let .distort(v1, v2, v3, v4, v5, v6, v7, v8):
            return "distort" + ":" + String(v1) + ":" + String(v2) + ":" + String(v3) + ":" + String(v4) + ":" + String(v5) + ":" + String(v6) + ":" + String(v7) + ":" + String(v8)
        case let .shear(x, y):
            return "shear" + ":" + String(x) + ":" + String(y)
        case .displace:
            return "displace"
        case .oilPaint(let value):
            return "oil_paint:" + String(value)
        case .redeye:
            return "redeye"
        case .advRedeye:
            return "adv_redeye"
        case .vignette(let value):
            return "vignette:" + String(value)
        case .gradientFade(let value):
            return "gradient_fade:" + String(value)
        case .pixelate(let value):
            return "pixelate:" + String(value)
        case .pixelateRegion(let value):
            return "pixelate_region:" + String(value)
        case .pixelateFaces(let value):
            return "pixelate_faces:" + String(value)
        case .blur(let value):
            return "blur:" + String(value)
        case .blurRegion(let value):
            return "blur_region:" + String(value)
        case .blurFaces(let value):
            return "blur_faces:" + String(value)
        case .sharpen(let value):
            return "sharpen:" + String(value)
        case .unsharpMask(let value):
            return "unsharp_mask:" + String(value)
        case .orderedDither(let value):
            return "ordered_dither:" + String(value)
        }
    }
        
}
