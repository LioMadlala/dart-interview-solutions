//Maximum Sum Subarray
findSumMaxSubArray(List<int> nums) {
  int pointA = 0, pointB = 1;
  int sum = 0;

  if (nums.isEmpty) return -1;
  if (nums.length == 1) {
    sum = nums[0];
    print(sum);
    return sum;
  }

  while (pointB < nums.length) {
    int prevSum = nums[pointA] + nums[pointB];

    if (sum < prevSum) {
      sum = prevSum;
      pointA++;
      pointB++;
      print("Sum is : $sum - ${[pointA, pointB]}");
    } else {
      pointA++;
      pointB++;
    }
  }
  return [pointA, pointB];
}
