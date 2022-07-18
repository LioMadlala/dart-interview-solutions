//find target in an array and return the indesies
findSumOfTargetInArray(List<int> nums, int target) {
  int sum = 0;
  int pointerA = 0, pointerB = nums.length - 1;
  nums.sort();

  while (pointerA <= pointerB) {
    sum = nums[pointerA] + nums[pointerB];

    if (sum == target) {
      print("$pointerA $pointerB");
      return [pointerA, pointerB];
    }
    if (target <= nums[pointerB]) {
      pointerB--;
    } else {
      pointerA++;
    }
  }
  print("$pointerA $pointerB");
  return [pointerA, pointerB];
}
