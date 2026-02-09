class Solution {
  int maxProfit(List<int> prices) {
    if (prices.isEmpty) return 0;

    int minPrice = prices[0];
    int maxProfit = 0;

    for (int i = 1; i < prices.length; i++) {
      if (prices[i] < minPrice) {
        minPrice = prices[i]; // Update minimum price if current price is lower
      } else {
        int profit = prices[i] - minPrice; // Calculate potential profit
        if (profit > maxProfit) {
          // Update maximum profit if current profit is higher
          maxProfit = profit;
        }
      }
    }

    return maxProfit;
  }
}

void main() {
  Solution solution = Solution();

  List<int> prices = [7, 1, 5, 3, 6, 4];
  int result = solution.maxProfit(prices);

  print("Maximum Profit: $result"); // Output: 5
}
