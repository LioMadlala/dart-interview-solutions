singleNumber(List<int> nums) {
  int sum = 0;

  for (int i in nums) {
    sum ^= nums[i];
  }

  print("Unrepeated Number : $sum");
  return sum;
}
