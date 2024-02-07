func solution(_ dirs:String) -> Int {
    var now = [0, 0]
    var visited: Set<[Int]> = []

    for dir in dirs {
        var (dx, dy) = (0, 0)

        switch dir {
        case "U": (dx, dy) = (0, 1)
        case "D": (dx, dy) = (0, -1)
        case "L": (dx, dy) = (-1, 0)
        case "R": (dx, dy) = (1, 0)
        default: break
        }

        let next = [now[0]+dx, now[1]+dy]
        if abs(next[0]) > 5 || abs(next[1]) > 5 { continue }
        
        if !visited.contains(now+next) && !visited.contains(next+now) {
            visited.insert(now+next)
        }
        
        now = next
    }
    return visited.count
}