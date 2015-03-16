//
//  Pinniculum.swift
//  Pinniculum
//
//  Created by Shun Kuroda on 2015/02/28.
//  Copyright (c) 2015年 kuroyam. All rights reserved.
//

import UIKit

public class Pinniculum {
    
    var strings: Array<NSMutableAttributedString> = []
    var style: NSMutableParagraphStyle = NSMutableParagraphStyle()
    
    public init() {
        
    }
    
    public func text(text: NSString) -> Pinniculum {
        var string = NSMutableAttributedString(string: text)
        strings += [string]
        return self
    }
    
    public func font(font: UIFont) -> Pinniculum {
        strings.last!.addAttribute(NSFontAttributeName, value: font, range: NSMakeRange(0, strings.last!.length))
        return self
    }
    
    public func color(color: UIColor) -> Pinniculum {
        strings.last!.addAttribute(NSForegroundColorAttributeName, value: color, range: NSMakeRange(0, strings.last!.length))
        return self
    }
    
    public func backgroundColor(color: UIColor) -> Pinniculum {
        strings.last!.addAttribute(NSBackgroundColorAttributeName, value: color, range: NSMakeRange(0, strings.last!.length))
        return self
    }
    
    public func kern(offset: Float) -> Pinniculum {
        strings.last!.addAttribute(NSKernAttributeName, value: NSNumber(float: offset), range: NSMakeRange(0, strings.last!.length))
        return self
    }
    
    public func align(alignment: NSTextAlignment) -> Pinniculum {
        style.alignment = alignment
        return self
    }
    
    public func build() -> NSAttributedString {
        var result = NSMutableAttributedString()
        for var i = 0; i < strings.count; i++ {
            result.appendAttributedString(strings[i])
        }
        result.addAttribute(NSParagraphStyleAttributeName, value: style, range: NSMakeRange(0, result.length))
        return result
    }
    
}
