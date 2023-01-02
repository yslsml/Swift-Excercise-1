//
//  ViewController.swift
//  HomeTask2
//
//  Created by Milana Antonova on 2.01.23.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let nums = [2.5, 9.7, 6.9, 8.2]
        let sumOfIntegerParts = getSumOfIntegerParts(array: nums)
        let sumOfFractionalParts = getSumOfFractionalParts(array: nums)
        print("\nInitial array: \(nums)")
        print("Sum of integer parts equals to \(sumOfIntegerParts)")
        print("Sum of fractional parts equals to \(sumOfFractionalParts)")
        print("\nSum of integer parts equals to \(getSumOfIntegerPartsUsingModf(array: nums)) (using modf)")
        print("Sum of fractional parts equals to \(getSumOfFractionalPartsUsingModf(array: nums)) (using modf)")
        
        let evenNumber = 4
        let oddNumber = 5
        print("\nIs number \(evenNumber) even? \(isEvenNumber(number: evenNumber))")
        print("Is number \(oddNumber) even? \(isEvenNumber(number: oddNumber))")
    }
    
    func getSumOfIntegerParts(array: [Double]) -> Int {
        var sum = 0
        for num in array {
            sum += Int(num)
        }
        return sum
    }
    
    func getSumOfFractionalParts(array: [Double]) -> Double {
        var sum: Double = 0
        for num in array {
            sum += (num - Double(Int(num)))
        }
        return sum
    }
    
    func isEvenNumber(number: Int) -> Bool {
        if (number % 2 == 0) {
            return true
        }
        return false
    }
    
    func getSumOfIntegerPartsUsingModf(array: [Double]) -> Int {
        var sum = 0
        for num in array {
            sum += Int(modf(num).0)
        }
        return sum
    }
    
    func getSumOfFractionalPartsUsingModf(array: [Double]) -> Double {
        var sum: Double = 0
        for num in array {
            sum += modf(num).1
        }
        return sum
    }
}

