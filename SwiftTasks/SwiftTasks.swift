//
//  SwiftTasks.swift
//  SwiftTasks
//
//  Created by Angelos Staboulis on 19/3/20.
//  Copyright © 2020 Angelos Staboulis. All rights reserved.
//

import Foundation
final class SwiftTasks{
    public static let shared = SwiftTasks()
    private init(){}
    func calculateSumArray(numbers:[Double])->Double{
               var sum = Double()
               for items in 0..<numbers.count{
                   sum = sum + numbers[items]
               }
               return sum
    }
    func calculateAVGArray(numbers:[Double])->Double{
        var avg = Double()
        var sum = Double()
        for items in 0..<numbers.count{
            sum = sum + numbers[items]
        }
        avg = sum / Double(numbers.count)
        return avg
    }
    func calculateAVG(number1:Double,number2:Double)->Double{
        return (number1 + number2) / 2
    }
    func multiplyMatrix(){
        for row in 1...10{
            for col in 1...10{
                debugPrint(String(row)+"X"+String(col)+"="+String(row*col))
            }
        }
    }
    func bubbleSortReverse(numbers:[Int])->[Int]{
        var tempArray = numbers
        var temp=Int()
        for rows in 0..<tempArray.count{
            for cols in 0..<tempArray.count{
                if(tempArray[rows]>tempArray[cols]){
                    temp=tempArray[rows]
                    tempArray[rows]=tempArray[cols]
                    tempArray[cols]=temp
                }
            }
        }
        return tempArray
    }
    
    func bubbleSort(numbers:[Int])->[Int]{
        var tempArray = numbers
        var temp=Int()
        for rows in 0..<tempArray.count{
            for cols in 0..<tempArray.count{
                if(tempArray[rows]<tempArray[cols]){
                    temp=tempArray[rows]
                    tempArray[rows]=tempArray[cols]
                    tempArray[cols]=temp
                }
            }
        }
        return tempArray
    }
    
    
}
