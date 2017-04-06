//
//  main.swift
//  CalcArrayPoints
//
//  Created by iGuest on 4/5/17.
//  Copyright © 2017 KitoPham. All rights reserved.
//

import Foundation


// Add, subtract, divide, multiply function for Ints
func add(left : Int, right : Int) -> Int{
    return left + right
}

func subtract(left : Int, right : Int) -> Int{
    return left - right
}

func divide(left : Int, right : Int) -> Int{
    return left / right
}

func multiply(left : Int, right : Int) -> Int{
    return left * right
}

func mathOperation(left : Int, right : Int, operation:(Int, Int) -> Int) -> Int{
    return operation(left,right)
}

// Add, subtract, divide, multiply function for Doubles
func add(left : Double, right : Double) -> Double{
    return left + right
}

func subtract(left : Double, right : Double) -> Double{
    return left - right
}

func divide(left : Double, right : Double) -> Double{
    return left / right
}

func multiply(left : Double, right : Double) -> Double{
    return left * right
}

func mathOperation(left : Double, right : Double, operation:(Double, Double) -> Double) -> Double{
    return operation(left,right)
}

//Array Functions


//Sums up all elements in an array of Int
func add(array : [Int]) -> Int{
    
    var sum = 0
    for index in 0 ... array.count - 1{
        sum = sum + array[index]
    }
    
    return sum
}

//Product of all elements in an array of Ints
func multiply(array : [Int]) -> Int{
    if array.count > 0{
        var product = array[0]
        for index in 1 ... array.count - 1{
            product = product * array[index]
        }
    
        return product
    }
    return 0
}

func count(array :[Int]) -> Int{
    return array.count
}

func average(array:[Int]) -> Int{
    return add(array : array)/count(array: array)
}

func reduce(array: [Int], operation:([Int]) -> Int) -> Int{
    return operation(array)
}


//Funtions to add/subtract points usings tuples

//Adds two X,Y points together
func add(p1 : (Int, Int), p2 : (Int, Int)) -> (Int, Int){
    return(add(left: p1.0, right: p2.0), add(left: p1.1, right: p2.1))
}

//Subtracts two X,Y points
func subtract(p1 : (Int, Int), p2 : (Int, Int)) -> (Int, Int){
    return(subtract(left: p1.0, right: p2.0), subtract(left: p1.1, right: p2.1))
}

//Functions to add/subtract points using dictionary and Int
func add(p1 : Dictionary<String, Int>?, p2 : Dictionary<String,Int>?) -> Dictionary<String, Int>{
    
    var xTotal : Int = 0
    var yTotal : Int = 0
    
    if (p1?["x"] == nil && p1?["y"] == nil){
        return p2!
    }
    
    if (p2?["x"] == nil && p2?["y"] == nil){
        return p1!
    }
    
    for (key, value) in p1!{
        if key == "x"{
            xTotal += value
        } else if key == "y"{
            yTotal += value
        }
    }
    
    for (key, value) in p2!{
        if key == "x"{
            xTotal += value
        } else if key == "y"{
            yTotal += value
        }
    }
    
    let product : Dictionary<String, Int> = ["x" : xTotal , "y" : yTotal]
    return product
}

//Function for subtracting point
func subtract(p1 : Dictionary<String, Int>?, p2 : Dictionary<String,Int>?) -> Dictionary<String, Int>{
    var yTotal : Int = 0
    var xTotal : Int = 0
    
    if p1? ["x"] != nil{
        xTotal = (p1?["x"])!
    }
    
    if p1?["y"] != nil {
        yTotal = (p1?["y"])!
    }
    
    for (key, value) in p2!{
        if key == "x" {
            xTotal = xTotal - value
        } else if key == "y" {
            yTotal = yTotal - value
        }
    }
    
    let product : Dictionary<String, Int> = ["x" : xTotal , "y" : yTotal]
    return product
}

//Functions to add/subtract points using dictionary and Double
func add(p1 : Dictionary<String, Double>?, p2 : Dictionary<String,Double>?) -> Dictionary<String, Double>{
    
    var xTotal : Double = 0.0
    var yTotal : Double = 0.0
    
    if (p1?["x"] == nil && p1?["y"] == nil){
        return p2!
    }
    
    if (p2?["x"] == nil && p2?["y"] == nil){
        return p1!
    }
    
    for (key, value) in p1!{
        if key == "x"{
            xTotal += value
        } else if key == "y"{
            yTotal += value
        }
    }
    
    for (key, value) in p2!{
        if key == "x"{
            xTotal += value
        } else if key == "y"{
            yTotal += value
        }
    }
    
    let product : Dictionary<String, Double> = ["x" : xTotal , "y" : yTotal]
    return product
}

func subtract(p1 : Dictionary<String, Double>?, p2 : Dictionary<String,Double>?) -> Dictionary<String, Double>{
    var yTotal : Double = 0.0
    var xTotal : Double = 0.0
    if p1? ["x"] != nil{
        xTotal = (p1?["x"])!
    }
    
    if p1?["y"] != nil {
        yTotal = (p1?["y"])!
    }
    
    for (key, value) in p2!{
        if key == "x" {
            xTotal = xTotal - value
        } else if key == "y" {
            yTotal = yTotal - value
        }
    }
    
    let product : Dictionary<String, Double> = ["x" : xTotal , "y" : yTotal]
    return product
}

