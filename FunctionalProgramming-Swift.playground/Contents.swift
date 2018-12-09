import Foundation

func filter(numbers: [Int], predicate: (Int)->Bool) -> [Int] {
    var result: [Int] = []
    for num in numbers {
        if predicate(num) {
            result.append(num)
        }
    }
    return result
}

//func GT5(num: Int) -> Bool {
//    return num > 5
//}

let numbers = [1,2,3,5,10,15,20]

print(filter(numbers: numbers, predicate: { $0 > 5 }))


//Swift's version of filter
print(numbers.filter({$0>5}))
