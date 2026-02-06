class Solution {
  bool containsDuplicate(List<int> nums) {
    Set<int> values = {}; // Create an empty set to store unique values

    for (int number in nums) {
      if (values.contains(number)) {
        return true; // Duplicate found
      }
      values.add(number); // Add number to set if it's not a duplicate
    }
    return false; // if we didn't find any duplicates
  }
}

void main() {
  Solution solution = Solution();
  List<int> numbers = [1, 2, 3, 1, 5, 6];
  print(solution.containsDuplicate(numbers)); // Output: true

  List<int> numbers2 = [1, 2, 3, 4, 5, 6];
  print(solution.containsDuplicate(numbers2)); // Output: false
}
