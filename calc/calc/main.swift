//
//  main.swift
//  calc
//
//  Created by Jooneil Ahn on 10/13/15.
//  Copyright (c) 2015 Jooneil Ahn. All rights reserved.
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
    return op(numOne, numTwo)
}

func newAdd (numArray : [Int]) -> Int {
    var result = 0
    for num in numArray {
        result = num + result
    }
    return result
}

func newMultiply (numArray : [Int]) -> Int {
    var result = 1
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
    if pointOne["x"] == nil || pointTwo["x"] == nil || pointOne["y"] == nil || pointTwo["y"] == nil {
        print("points do not contain numbers")
        exit(1)
    }
    let xResult = pointOne["x"]! + pointTwo["x"]!
    let yResult = pointOne["y"]! + pointTwo["y"]!
    return (xResult, yResult)
}

func subtractPoints (pointOne : [String : Double], pointTwo : [String : Double]) -> (Double, Double) {
    if pointOne["x"] == nil || pointTwo["x"] == nil || pointOne["y"] == nil || pointTwo["y"] == nil {
        print("points do not contain numbers")
        exit(1)
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

//Testing functions

// Calculator
print(add(5, numTwo: 7)) //result should be 12
print(subtract(5, numTwo: 7)) // result should be -2
print(multiply(5, numTwo: 7)) // result should be 35
print(divide(40, numTwo: 8)) // result should be 5
print(mathOp(5, numTwo: 7, op: add))
print(mathOp(5, numTwo: 7, op: subtract))
print(mathOp(5, numTwo: 7, op: multiply))
print(mathOp(40, numTwo: 8, op: divide))

// Array Fun
let testArray = [1, 2, 3, 4, 5]
print(newAdd(testArray)) // result should be 15
print(newMultiply(testArray)) // result should be 120
print(count(testArray)) // result should be 5
print(avg(testArray)) // result should be 3
print(newMathOp(testArray, op: count)) // should be 5
print(newMathOp(testArray, op: avg)) //should be 3

// Points
print(addPoints(dict, pointTwo: dictTwo)) // result should be (7.0, 5.0)
print(subtractPoints(dict, pointTwo: dictTwo)) // result should be (-1.0, 1.0)

