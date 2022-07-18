//Contains Duplicate
containsDuplicate(List<int> nums) {
  List<int> seen = [];

  for (int i = 0; i < nums.length; i++) {
    if (seen.contains(nums[i])) {
      print("Yes");
      return true;
    } else {
      seen.add(nums[i]);
    }
  }
  return false;
}
