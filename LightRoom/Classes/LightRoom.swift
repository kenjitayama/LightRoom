//
//  LightRoom.swift
//  LightRoom
//
//  Created by Muukii on 7/28/15.
//  Copyright © 2015 muukii. All rights reserved.
//

import Foundation
import QuartzCore

/**
About Core Image
https://developer.apple.com/library/mac/documentation/GraphicsImaging/Conceptual/CoreImaging/ci_intro/ci_intro.html

Filters
https://developer.apple.com/library/prerelease/mac/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html
*/


public enum LightRoom {
    
}

public struct Vector2: ArrayLiteralConvertible {
    
    private let v: [CGFloat]
    public init(arrayLiteral elements: CGFloat...) {
        
        self.v = elements
    }
    
    public var CIVector: CoreImage.CIVector {
        
        switch self.v.count {
        case 2:
            return CoreImage.CIVector(x: v[0], y: v[1])
        default:
            fatalError("Can't convert CIVector2 count: \(self.v.count) ")
        }
    }
}

public struct Vector3: ArrayLiteralConvertible {
    
    private let v: [CGFloat]
    public init(arrayLiteral elements: CGFloat...) {
        
        self.v = elements
    }
    
    public var CIVector: CoreImage.CIVector {
        
        switch self.v.count {
        case 3:
            return CoreImage.CIVector(x: v[0], y: v[1], z: v[2])
        default:
            fatalError("Can't convert CIVector 3")
        }
    }
}

public struct Vector4: ArrayLiteralConvertible {
    
    private let v: [CGFloat]
    public init(arrayLiteral elements: CGFloat...) {
        
        self.v = elements
    }
    
    public var CIVector: CoreImage.CIVector {
        
        switch self.v.count {
        case 4:
            return CoreImage.CIVector(x: v[0], y: v[1], z: v[2], w: v[3])
        default:
            fatalError("Can't convert CIVector 4")
        }
    }
}

public struct Vector10: ArrayLiteralConvertible {
    
    private let v: [CGFloat]
    public init(arrayLiteral elements: CGFloat...) {
        
        self.v = elements
    }
    
    public var CIVector: CoreImage.CIVector {
        
        switch self.v.count {
        case 10:
            return CoreImage.CIVector(values: v, count: 10)
        default:
            fatalError("Can't convert CIVector 10")
        }
    }
}
