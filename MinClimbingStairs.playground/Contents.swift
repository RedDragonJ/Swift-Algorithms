
// Find the min cost of climb a stair
// Each stair has a price but you can only go one step or two steps at time

let test1 = [10,15,20]
let test2 = [1,100,1,1,1,100,1,1,100,1]

func minCostClimbingStairs(costs: [Int]) -> Int {
    var cost1: Int = 0
    var cost2: Int = 0
    
    for i in 0..<costs.count {
        let tempCost = costs[i] + min(cost1, cost2)
        cost2 = cost1
        cost1 = tempCost
    }
    
    return min(cost1, cost2)
}

print(minCostClimbingStairs(costs: test1))
print(minCostClimbingStairs(costs: test2))

