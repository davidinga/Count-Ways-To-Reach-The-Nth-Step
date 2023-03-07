func count_ways_to_climb(steps: [Int], n: Int) -> Int {
  var table: [Int] = Array(repeating: 0, count: n + 1)
  
  for step in steps where step <= n {
    table[step] = 1
  }
  
  for i in 1...n {
    for step in steps where i - step >= 0 {
      table[i] += table[i - step]
    }
  }
  
  return table[n]
}