int search(List<int> nums, int target) {
  for (int i = 0; i < nums.length; i++) {
    if (nums[i] == target) {
      return i;
    }
  }
  return -1;
}

void main() {
  List<int> nums = [-1, 0, 3, 5, 9, 12];

  print(search(nums, 9)); // Output: 4
  print(search(nums, 2)); // Output: -1
}
