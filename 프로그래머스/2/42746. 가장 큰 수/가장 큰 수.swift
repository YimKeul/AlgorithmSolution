import Foundation

    func solution(_ numbers: [Int]) -> String {
        let sorted = numbers.map { String($0) }.sorted {
            $0 + $1 > $1 + $0
        }
        
        let result = sorted.joined()
        return result.first == "0" ? "0" : result
    }