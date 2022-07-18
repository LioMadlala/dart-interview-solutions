//Product Of Array Except Self
//!Important
productOfArrayExceptSelf(List<int> nums) {
  int length = nums.length;
  List<int> finalArray = [];
  List.generate(length, (index) {
    finalArray.add(index);
  });

  finalArray[0] = 1;

  for (int i = 1; i < length; i++) {
    finalArray[i] = nums[i - 1] * finalArray[i - 1];
    print(finalArray[i - 1]);
  }

  int product = 1;

  for (int i = length - 1; i >= 0; i--) {
    finalArray[i] = finalArray[i] * product;

    product *= nums[i];
  }

  print(finalArray);
  return finalArray;
}
