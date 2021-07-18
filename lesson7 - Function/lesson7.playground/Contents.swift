import UIKit
// MARK: - Beginning

//#Function: 1
func Myfunc(a:Int, b:Int = 0) -> Int{
    return a+b
}

//#Function: 2
func Myfunc(firstNumber a:Int, secondNumber b:Int = 0) -> Int{
    return a+b
}

//#Function: 3
func Myfunc(_ a:Int, _ b:Int = 0) -> Int{
    return a+b
}

//Call Function:
print(Myfunc(2))

print(Myfunc(2, 3))

print(Myfunc(a: 3, b: 4))

print(Myfunc(firstNumber: 4, secondNumber: 6))

//MARK: - Challenge

func goodMorning() {
    print("Good Morning")
}

func printTotalWithTax(subTotal a:Double = 0) {
    print(ceil(a * 1.13))
}

func getTotalWithTax(subTotal a:Double = 0) -> Double {
    return a * 1.13
}

func calculateTotalWithTax(subTotal a:Double = 0, Tax b:Double = 1.13) -> Double {
    return a * b
}

// #call function#

//#1
goodMorning()
//#2
printTotalWithTax(subTotal: 130)
//#3
print("getTotalWithTax value:", getTotalWithTax(subTotal: 140))
//#4
print("calculateTotalWithTax value:",calculateTotalWithTax(subTotal: 150, Tax: 1.8))
