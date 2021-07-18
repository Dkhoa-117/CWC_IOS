//MARK: - Beginning
// gán dữ liệu cho biến
var myString:String = "Hello"

print(myString)

var myInt:Int = 117

print(myInt)

// constants = biến mà dữ liệu không thay đổi
let myConstant = 100
print(myConstant)

//MARK: - Math

var a = 20 + 5
var b = 20 - 5
var c = 20 * 5
var d = 20 / 5
var e = 20 % 2

var f = (a * b) + (c / d)

// increment the variable
f += 1

// Một số các toán tử khác
import Foundation

// Absolute num = giá trị tuyệt đối
var g = abs(-1)

// Ceiling = làm tròn lên
var h = ceil(1.8)

// Floor = làm tròn xuống
var i = floor(1.4)

// Square Root = căn
var j = sqrt(36)

// Power = mũ
var k = pow(2, 4)

// MARK: - Challenge
/*
 Challenge:
 4 people have dinner and want to split the bill.
 Calculate the total with tax and then how much each person owes.
 Assign it to the variable,'split' and then print it out to the console area.
 */
let people:Double = 4
let subtotal:Double = 128
let tax = 0.13
var split:Double = 0

split = ( subtotal * tax + subtotal ) / people

print("each one pay:", split)

