//Kadane's Algorithm to Maximum Sum Subarray
import 'dart:math';

maxInSubArray(List<int> nums) {
  int totalSum = nums[0];
  int tempSum = totalSum;

  for (int i = 1; i < nums.length; i++) {
    tempSum = max(nums[i] + totalSum, nums[i]);
    totalSum = max(tempSum, totalSum);
  }
  print(totalSum);
  return totalSum;
}
