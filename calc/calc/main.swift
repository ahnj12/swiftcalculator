//
//  main.swift
//  calc
//
//  Created by iGuest on 10/13/15.
//  Copyright (c) 2015 iGuest. All rights reserved.
//

import Foundation


func add (numOne : Int, numTwo : Int) -> Int {
    return numOne + numTwo
}

func subtract (numOne : Int, numTwo : Int) -> Int {
    return numOne - numTwo
}

func multiply (numOne : Int, numTwo : Int) -> Int {
    return numOne * numTwo
}

func divide (numOne : Int, numTwo : Int) -> Int {
    return numOne / numTwo
}

func mathOp (numOne : Int, numTwo : Int, op : (Int, Int) -> Int) -> Int {
    return op(numOne, numOne)
}

func newAdd (numArray : [Int]) -> Int {
    var result = 0
    for num in numArray {
        result = num + result
    }
    return result
}

func newMultiply (numArray : [Int]) -> Int {
    var result = 0
    for num in numArray {
        result = num * result
    }
    return result
}

func count(numArray : [Int]) -> Int{
    return numArray.count
}

func avg (numArray : [Int]) -> Int {
    return newAdd(numArray) / numArray.count
    
}

func newMathOp (numArray : [Int], op : ([Int]) -> Int) -> Int {
    return op(numArray)
}

func addPoints (pointOne : [String : Double], pointTwo : [String : Double]) -> (Double, Double) {
    
    let xResult = pointOne["x"]! + pointTwo["x"]!
    let yResult = pointOne["y"]! + pointTwo["y"]!
    return (xResult, yResult)
}

func subtractPoints (pointOne : [String : Double], pointTwo : [String : Double]) -> (Double, Double) {
    if pointOne["x"] == nil || pointTwo["x"] == nil{
        
    }
    let xResult = pointOne["x"]! - pointTwo["x"]!
    let yResult = pointOne["y"]! - pointTwo["y"]!
    return (xResult, yResult)
}
var dict = [
    "x" : 3.0,
    "y" : 3.0
]

var dictTwo = [
    "x" : 4.0,
    "y" : 2.0
]

print(addPoints(dict, pointTwo: dictTwo))

