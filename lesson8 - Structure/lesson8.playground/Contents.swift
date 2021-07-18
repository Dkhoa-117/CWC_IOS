import UIKit

// MARK: - Beginning

struct MyStruct {
    //# Properties = Variables and Constants here #
    var message = ""
    
    //Computed Properties
    var messagewithprefix:String {
        let prefix = "Khoa said "
        return prefix + message
    }
    
    //# Method = Functions here #
    func printMessage() {
        print(messagewithprefix)
    }
}

// MARK: - Challenge

struct Car {
    var make:String = "BMW"
    var year:String = "2021"
    var model:String = "i8"
    var detail:String {
        return make + " " + model + " " + year
    }
    
    func getDetail() -> String {
        return detail
    }
}

// create
var a:Car = Car()
print(a.getDetail())
