//
//  WorkshopLibrary.swift
//  Library functions
//
//  Created by Alberto Pacheco on 20/07/15.
//  Copyright (c) 2015 Alberto Pacheco. All rights reserved.
//

import Foundation

// Returns an integer random number inside a closed interval (default=1...1000)
public func randomNum(_ range: ClosedInterval<Int> = 1...1000) -> Int
{
    return Int(arc4random_uniform(UInt32(range.end + 1))) + range.start
}

// Read a string from keyboard (receives and echoes a text label)
public func input(t: String) -> String
{
    print("\(t)? ")
    let keyboard = NSFileHandle.fileHandleWithStandardInput()
    return NSString(data: keyboard.availableData, encoding:NSUTF8StringEncoding)!.stringByTrimmingCharactersInSet(NSCharacterSet.newlineCharacterSet())
}

// Read an integer number within a closed interval from keyboard (default range = 1...1000)
// Note: Returns nil if input string is not a number
public func inputNum(t: String, range: ClosedInterval<Int> = 1...1000) -> Int!
{
    if let n = input(t).toInt() {
        if range.contains(n) {
            return n
        }
    }
    return nil
}
