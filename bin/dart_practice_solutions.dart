import 'dart:math';

void main() {
//   reverseString("abc");
  // firstDuplicate([1, 2, 3, 5, 6, 4, 5, 8, 3]);
  // gasCircuit([1, 2, 3, 4, 5], [3, 4, 5, 1, 2]);
  // singleNumber([2, 2, 1]);
  // findSumOfTargetInArray([1, 2, 3, 5, 6, 7], 5);
  // findSumMaxSubArray([5]);
  // oddOrEven(10);
  // maxInSubArray([1, 2, -1, 3, 5 - 7, 1]);
  // productOfArrayExceptSelf([1, 2, 3]);
  // containsDuplicate([1, 2, 3, 1, 2]);
  // longestStringNoRepeatCharecters("abcabcbb");
  // romanNumbers("XXI");
  // runLengthEncoding("aaabcc");
  firsNonRepeating("aabcd");
}

//First non Repeating Character
firsNonRepeating(String s) {
  Map<String, int> charecters = {};
  int aPointer = 0;
  int bPointer = 1;

  for (int i = 0; i < s.length; i++) {
    if (charecters.containsKey(s[i])) {
      charecters.update(s[i], (value) => (charecters[s[i]]! + 1));
    } else {
      charecters.putIfAbsent(s[i], () => 1);
    }
  }

  String char = "";
  int value = 0;

  for (int i = 0; i < charecters.length; i++) {
    value = charecters.values.elementAt(i);
    char = charecters.keys.elementAt(i);
    if (value == 1) {
      print("$char $value");
      return "found";
    } else {
      print("not the one");
    }
  }

  print(char);
}

//Run Length Encoding
//?Image compression
runLengthEncoding(String s) {
  List<String> compressed = [];
  int aPointer = 0;
  int bPointer = 1;
  int count = 0;
  String finalString = "";

  while (bPointer < s.length) {
    if (s[aPointer] == s[bPointer]) {
      count++;
      bPointer++;
      aPointer++;
    } else {
      compressed.add("${count + 1}${s[aPointer]}");
      aPointer = bPointer;
      bPointer++;
      count = 0;
    }
    if (bPointer == s.length) {
      compressed.add("${count + 1}${s[aPointer]}");
    }
  }
}

//Roman Numbers
romanNumbers(String s) {
  int ans = 0, number = 0;

  for (int i = s.length - 1; i >= 0; i--) {
    switch (s[i]) {
      case 'I':
        number = 1;
        break;
      case 'V':
        number = 5;
        break;
      case 'X':
        number = 10;
        break;
      case 'L':
        number = 50;
        break;
      case 'C':
        number = 100;
        break;
      case 'D':
        number = 500;
        break;
      case 'M':
        number = 1000;
        break;
    }

    if (number * 4 < ans) {
      ans -= number;
    } else {
      ans += number;
    }
  }
  print(ans);
  return ans;
}

//Longest substring with no repeating charecters
longestStringNoRepeatCharecters(String s) {
  List<String> seen = [];
  int max = 0;
  int r = 0;
  int aPointer = 0;
  int bPointer = 0;

  while (bPointer < s.length) {
    if (!seen.contains(s[bPointer])) {
      seen.add(s[bPointer]);
      bPointer++;
      max = (seen.length);
      r++;
    } else {
      r--;
      seen.remove(s[aPointer]);
      aPointer++;
    }
  }
  print(max);
  return max;
}

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

//Kadane's Algorithm to Maximum Sum Subarray
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

oddOrEven(int length) {
  for (int i = 0; i < length; i++) {
    if ((i % 2) == 0) {
      print("Even $i");
    } else {
      print("Odd $i");
    }
  }
}

singleNumber(List<int> nums) {
  int sum = 0;

  for (int i in nums) {
    sum ^= nums[i];
  }

  print("Unrepeated Number : $sum");
  return sum;
}

reverseString(String s) {
  String reversedString = "";

  for (int i = s.length - 1; i >= 0; i--) {
    print(s[i]);
    reversedString = reversedString + s[i];
  }

  print(reversedString);
  return reversedString;
}

firstDuplicate(List<int> list) {
  List<int> seen = [];
  for (int i = 0; i <= list.length; i++) {
    if (seen.contains(list[i])) {
      print(list[i]);
      return list[i];
    } else {
      seen.add(list[i]);
    }
  }
}

gasCircuit(List<int> gas, List<int> cost) {
  int n = gas.length;
  int totalSurplus = 0;
  int remaining = 0;
  int s = 0;

  for (int i = 0; i < n; ++i) {
    totalSurplus += gas[i] - cost[i];
    remaining += gas[i] - cost[i];
    if (remaining < 0) {
      remaining = 0;
      s = i + 1;
    }
  }
  print("Start at : $s");
  return (totalSurplus < 0) ? -1 : s;
}

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

searchForNumberLinear(List<int> nums, target) {
  //using linear
  //no need to Sort,

  //  for()
}
