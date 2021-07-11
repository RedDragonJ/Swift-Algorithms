
/*
 Problem: Given n non-negative integers a1, a2, ....., and where each represents a point at coordinate (i, ai). n vertical lines are drawn such that the two endpoints of the line i is at(i, ai) and (i, 0)
     Find two lines, which together with x-axis forms a container, such that the container contains the most water.
 Example:
     NA
 */

func maxArea(heights: [Int]) -> Int {
    
    var maxArea: Int = 0
    var left: Int = 0
    var right: Int = heights.count - 1
    
    while left < right {
        
        let area = min(heights[left], heights[right]) * (right - 1) // Calculate the area
        maxArea = max(maxArea, area) // Compare to the the largest area
        
        if heights[left] < heights[right] {
            left += 1
        } else {
            right -= 1
        }
    }
    
    return maxArea
}

/* >>>>>>>>>>> TEST <<<<<<<<<<< */

let test1 = [1,8,6,2,5,4,8,3,7]

print(maxArea(heights: test1))
