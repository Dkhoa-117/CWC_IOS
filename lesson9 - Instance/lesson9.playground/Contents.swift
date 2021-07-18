import UIKit

//MARK: - Challenge 1:
struct TaxCalculator{
    var tax:Double = 0.1
    func totalWithTax(total:Double) -> Double {
        return (total + tax * total)
    }
}

var khoa:TaxCalculator = TaxCalculator(tax: 0.17)
print(khoa.totalWithTax(total: 100))

//MARK: - Challenge 2:

struct BillSplitter {
    
    func splitBy(subtotal: Double, people:Int) -> Double {
        let tc:TaxCalculator = TaxCalculator()
        return tc.totalWithTax(total: subtotal) / Double(people)
    }
}



//MARK: - Challenge 3:

var Khoa_and_friends = BillSplitter()
print(Khoa_and_friends.splitBy(subtotal: 120, people: 5))
