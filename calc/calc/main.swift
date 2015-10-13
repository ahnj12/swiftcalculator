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
println(add(5, 7)) //result should be 12
println(subtract(5, 7)) // result should be -2
println(multiply(5, 7)) // result should be 35
println(divide(40, 8)) // result should be 5
println(mathOp(5, 7, add))
println(mathOp(5, 7, subtract))
println(mathOp(5, 7, multiply))
println(mathOp(40, 8, divide))

// Array Fun
let testArray = [1, 2, 3, 4, 5]
println(newAdd(testArray)) // result should be 15
println(newMultiply(testArray)) // result should be 120
println(count(testArray)) // result should be 5
println(avg(testArray)) // result should be 3
println(newMathOp(testArray, count)) // should be 5
println(newMathOp(testArray, avg)) //should be 3

// Points
println(addPoints(dict, dictTwo)) // result should be (7.0, 5.0)
println(subtractPoints(dict, dictTwo)) // result should be (-1.0, 1.0)

